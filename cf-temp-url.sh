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

read -p "👉 Enter local port (example: 3000): " PORT

echo ""
echo "🔗 Temporary public URL will be created"
echo "❌ Terminal close = URL DOWN"
echo ""

TMPFILE=$(mktemp)

# run cloudflared in background and capture output
cloudflared tunnel --no-autoupdate --url http://127.0.0.1:$PORT > "$TMPFILE" 2>&1 &

CF_PID=$!

# wait until URL appears
while true; do
    URL=$(grep -o 'https://[a-z0-9-]*\.trycloudflare\.com' "$TMPFILE")
    if [ ! -z "$URL" ]; then
        echo ""
        echo "🌐 Temporary URL:"
        echo "$URL"
        break
    fi
    sleep 1
done

# keep tunnel alive (terminal close = DOWN)
wait $CF_PID
