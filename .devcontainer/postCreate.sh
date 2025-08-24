#!/usr/bin/env bash
set -Eeuo pipefail

echo "Beginning postCreate.sh"

# Log for postCreate script
exec > >(tee -a /workspaces/postCreate.log) 2>&1
export PS4='+ [${BASH_SOURCE##*/}:${LINENO}] '
set -x

echo "Initializing Butano submodule"
git submodule update --init --recursive

# echo "Installing xpra"
# sudo DEBIAN_FRONTEND=noninteractive apt-get install -y xpra

echo "Finished postCreate.sh"

#python venv?
# sudo apt install python3.11-venv

# sudo apt-get install -y pkg-config libxxhash-dev
# sudo apt-get install -y \
#   pkg-config \
#.  libxres-dev \
#   libx11-dev libxfixes-dev libxdamage-dev libxkbfile-dev \
#   libxrandr-dev libxrender-dev libxtst-dev libxcomposite-dev

# sudo apt-get install -y libgtk-3-dev


### NOT WORKING
# 1) Add Xpra’s signing key
# sudo mkdir -p /usr/share/keyrings
# curl -fsSL https://xpra.org/gpg.asc | sudo tee /usr/share/keyrings/xpra.gpg >/dev/null

# # 2) Add the repo for your codename (jammy, noble, bookworm, etc.)
# #    Replace <codename> if needed (run: . /etc/os-release; echo $VERSION_CODENAME)
# echo "deb [signed-by=/usr/share/keyrings/xpra.gpg] https://xpra.org/lts/bookworm/ ./" \
# | sudo tee /etc/apt/sources.list.d/xpra.list

# # 3) Install
# sudo apt-get update
# sudo apt-get install -y xpra


### MAYBE?

# xpra command in progress.
# TODO: Make this either autostart or be something the user can easily start
# Also debug issue with libresprite "installation"
# Hypothesis: the .gitignore stripped some needed stuff from libresprite
# xpra start :100 --bind-tcp=0.0.0.0:14500 --html=on     --start-child="xeyes" --no-daemon


#sudo wget -O "/usr/share/keyrings/xpra.asc" https://xpra.org/xpra.asc
#wget https://raw.githubusercontent.com/Xpra-org/xpra/master/packaging/repos/bookworm/xpra-lts.sources
#sudo apt-get update
#sudo apt-get install xpra

# cd /tools
# chmod +x LibreSprite-anylinux-x86_64.AppImage
# ./LibreSprite-anylinux-x86_64.AppImage --appimage-extract
# mv squashfs-root/ libresprite