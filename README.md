---

# 🚀 Cloudflare Temporary URL Tool

![GitHub stars](https://img.shields.io/github/stars/pratikmule127/cf-temp-url?style=social)
![GitHub forks](https://img.shields.io/github/forks/pratikmule127/cf-temp-url?style=social)
![GitHub issues](https://img.shields.io/github/issues/pratikmule127/cf-temp-url)
![GitHub last commit](https://img.shields.io/github/last-commit/pratikmule127/cf-temp-url)
![GitHub repo size](https://img.shields.io/github/repo-size/pratikmule127/cf-temp-url)
![GitHub release](https://img.shields.io/github/v/release/pratikmule127/cf-temp-url)
![GitHub license](https://img.shields.io/github/license/pratikmule127/cf-temp-url)
![Maintenance](https://img.shields.io/badge/Maintained-Yes-brightgreen)
![Platform](https://img.shields.io/badge/Platform-Linux-blue)
![Shell Script](https://img.shields.io/badge/Made%20With-Bash-green)
![Cloudflare](https://img.shields.io/badge/Powered%20By-Cloudflare-orange)
![Visitors](https://komarev.com/ghpvc/?username=pratikmule127\&repo=cf-temp-url\&color=blue)

---

## 🌍 Project Overview

**Cloudflare Temporary URL Tool** allows you to generate a secure public URL for your local server instantly using **Cloudflare Tunnel (`cloudflared`)**.

No need for:

* ❌ Port Forwarding
* ❌ Public IP
* ❌ Router configuration
* ❌ Ngrok account

Within seconds:

```
localhost ➜ Cloudflare Network ➜ Public URL
```

---

## 🚀 Why This Project?

While working on local development & Linux environments, sharing a localhost server publicly was painful.

This tool solves that problem by:

* Automating cloudflared installation
* Creating temporary secure tunnels
* Supporting both foreground & background modes
* Keeping it lightweight & dependency-free

---

## ✨ Features

* ✅ Auto-installs `cloudflared` if missing
* ✅ Generates temporary `*.trycloudflare.com` URL
* ✅ Works on any local port
* ✅ Foreground Mode
* ✅ Background Mode (v2)
* ✅ Displays Tunnel PID
* ✅ Easy to stop tunnel manually
* ✅ Works on Ubuntu, Debian, CentOS

---

## 🛠 Tech Stack

* Bash Scripting
* Linux
* Cloudflare Tunnel
* Networking Concepts

---

## 📂 Project Structure

```
cf-temp-url/
│
├── cf-temp-url.sh
├── cf-temp-url-v2.sh
└── README.md
```

---

## ⚡ Installation

```bash
git clone https://github.com/pratikmule127/cf-temp-url.git
cd cf-temp-url
chmod +x cf-temp-url.sh cf-temp-url-v2.sh
```

---

## ▶️ Usage

### 🔹 Basic Version

```bash
./cf-temp-url.sh 3000
```

### 🔹 Advanced Version

```bash
./cf-temp-url-v2.sh
```

Choose:

* Foreground Mode
* Background Mode

---

## 🛑 Stop Background Tunnel

```bash
kill <PID>
```

Example:

```bash
kill 12345
```

---

## 🧠 Problem Solving Approach

### ❓ Problem

Developers struggle to share localhost apps publicly for:

* Webhook testing
* Client demos
* API callbacks
* Remote debugging

Common solutions require:

* Ngrok account
* Port forwarding
* Complex network setup

---

### ✅ Solution

This script:

1. Checks if `cloudflared` exists
2. Installs automatically if missing
3. Starts secure tunnel
4. Extracts generated public URL
5. Displays it clearly to user

Minimal setup. Maximum efficiency.

---

## 🔐 Security Notes

* Temporary URL
* Random subdomain
* HTTPS enabled by default
* Suitable for development & testing

For production:

* Use Named Tunnels
* Authenticate with Cloudflare account

---

## 📸 Example Output

```
Public URL Generated:
https://random-subdomain.trycloudflare.com
```

---

## 📈 Future Improvements

* Docker support version
* Logging support
* Auto background restart
* Multiple port support
* Systemd service integration

---

## 🤝 Contributing

Pull requests are welcome.
Open an issue for feature requests or bugs.

---

## 📄 License

MIT License

---

## 👨‍💻 Author

**Pratik Mule**
Linux | DevOps | Cloud Enthusiast

🔗 GitHub: [https://github.com/pratikmule127](https://github.com/pratikmule127)

---

Bol do next level bana du 😎
