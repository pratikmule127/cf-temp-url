#!/bin/bash

# silent install cloudflared if not exists
if ! command -v cloudflared >/dev/null 2>&1; then
    wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -O /tmp/cloudflared
    chmod +x /tmp/cloudflared
    sudo mv /tmp/cloudflared /usr/local/bin/cloudflared
fi

echo "=============================="
echo " Cloudflare Temporary URL Tool"
echo "=============================="

read -p "👉 Enter local port (example: 3000 / 8080): " PORT

echo ""
echo "Choose mode:"
echo "1) Foreground (terminal close = URL DOWN)"
echo "2) Background  (terminal close = URL UP)"
read -p "👉 Enter choice (1/2): " MODE

TMPFILE=$(mktemp)

CLOUDFLARED_CMD="cloudflared tunnel \
  --no-autoupdate \
  --edge-ip-version 4 \
  --protocol http2 \
  --url http://127.0.0.1:$PORT"

if [ "$MODE" = "1" ]; then
    # foreground
    $CLOUDFLARED_CMD > "$TMPFILE" 2>&1 &
    CF_PID=$!

elif [ "$MODE" = "2" ]; then
    # background
    nohup $CLOUDFLARED_CMD > "$TMPFILE" 2>&1 &
    CF_PID=$!

else
    echo "❌ Invalid option"
    exit 1
fi

# wait until URL appears
while true; do
    URL=$(grep -o 'https://[a-z0-9-]*\.trycloudflare\.com' "$TMPFILE")
    if [ -n "$URL" ]; then
        echo ""
        echo "🌐 Public URL:"
        echo "$URL"
        break
    fi
    sleep 1
done

if [ "$MODE" = "1" ]; then
    wait $CF_PID
else
    echo ""
    echo "✅ Tunnel running in background"
    echo "🛑 Stop with:"
    echo "   kill $CF_PID"
fi
