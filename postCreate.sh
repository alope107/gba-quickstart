#!/usr/bin/env bash
# set -euo pipefail

echo "[+] Installing devkitPro pacman…"
wget -P /tmp https://apt.devkitpro.org/install-devkitpro-pacman
chmod +x /tmp/install-devkitpro-pacman
yes |sudo /tmp/install-devkitpro-pacman 
echo 'export DEVKITPRO=/opt/devkitpro' >> ~/.bashrc
echo 'export PATH="$DEVKITPRO/tools/bin:/opt/devkitpro/devkitARM/bin:$PATH"' >> ~/.bashrc
export DEVKITPRO=/opt/devkitpro
export PATH="$DEVKITPRO/tools/bin:/opt/devkitpro/devkitARM/bin:$PATH"

echo "[+] Installing devkitARM + libgba + grit + mmutil…"
sudo dkp-pacman -Syu --noconfirm
sudo dkp-pacman -S --needed --noconfirm gba-dev grit mmutil

# Immediately make the new environment variables accessible
source /etc/profile.d/devkit-env.sh

echo "[+] Initializing submodules…"
git submodule update --init --recursive

# # Show versions 
# echo "[i] arm-none-eabi-gcc version:"
# arm-none-eabi-gcc --version | head -n1 || true
# echo "[i] grit:"
# grit version || true
# echo "[i] mmutil:"
# mmutil -h | head -n1 || true

echo "[✓] Post-create complete."
