# Ubuntu Setup Script

A simple script to automate post-installation setup for Ubuntu Desktop or minimal Ubuntu installation.

---

## ⚙️ Step 0: Prepare Ubuntu

Before using the script, update your system and install required tools (`curl` and `git`), then run:

```bash
sudo apt update -y
sudo apt install -y curl git

bash <(curl -sL https://raw.githubusercontent.com/7uisu/ubuntu-setup/main/post-install-ubuntu.sh)
