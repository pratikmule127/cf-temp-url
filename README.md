# Cloudflare Temporary URL Tool

Easily create temporary public URLs for your local servers using **Cloudflare Tunnel (cloudflared)**.

---

## 🚀 Features

- Auto-install `cloudflared` if not already installed
- Generates temporary `*.trycloudflare.com` URLs
- Works for any local port (3000, 8080, etc.)
- Foreground & Background modes (v2)
- Lightweight & easy to use

---

## 📂 Files

### `cf-temp-url.sh`
- Basic version
- Runs in foreground
- URL goes down when terminal closes

### `cf-temp-url-v2.sh`
- Advanced version
- Choose between:
  - Foreground (terminal close = URL down)
  - Background (URL stays up even if terminal closes)
- Shows PID to stop tunnel manually

---

## 🛠 Requirements

- Linux OS (Ubuntu, Debian, CentOS, etc.)
- `bash`
- Internet connection

> `cloudflared` is installed automatically if missing.

---

## ▶️ Usage

### Give execute permission
```bash
chmod +x cf-temp-url.sh cf-temp-url-v2.sh
