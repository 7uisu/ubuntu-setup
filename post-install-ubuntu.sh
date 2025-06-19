#!/bin/bash

echo "🧼 Starting Ubuntu system setup..."

echo "📦 Updating package lists..."
sudo apt update -y

echo "⬆️ Upgrading existing packages..."
sudo apt upgrade -y

echo "📦 Installing Flatpak..."
sudo apt install -y flatpak

echo "📦 Installing FUSE compatibility layer (for AppImage)..."
sudo apt install -y libfuse2t64

echo "🎞️ Installing Ubuntu Restricted Extras (media codecs, fonts)..."
sudo apt install -y ubuntu-restricted-extras

echo "🔧 Installing Git and Curl..."
sudo apt install -y git curl

echo ""
echo "🚀 Optional: Install JaKooLit's Ubuntu Hyprland Setup"
echo "[1] Yes, install Hyprland"
echo "[0] No, skip Hyprland installation"

read -p "Enter your choice (1/0): " hypr_choice

if [[ "$hypr_choice" == "1" ]]; then
    echo "📥 Cloning JaKooLit's Hyprland repo for Ubuntu 24.04..."
    git clone -b 24.04 --depth=1 https://github.com/JaKooLit/Ubuntu-Hyprland.git ~/Ubuntu-Hyprland-24.04
    cd ~/Ubuntu-Hyprland-24.04
    chmod +x install.sh
    echo "⚙️ Running Hyprland install script..."
    ./install.sh
else
    echo "❌ Skipped Hyprland installation."
fi

echo ""
echo "🧩 Adding Flathub (Flatpak app store)..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo ""
echo "✅ Ubuntu setup complete!"
echo "🔁 It is recommended to reboot your system before using Hyprland or Flatpak apps."
