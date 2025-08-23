#!/usr/bin/env bash
set -Eeuo pipefail

echo "Beginning postCreate.sh"

# Log for postCreate script
exec > >(tee -a /workspaces/postCreate.log) 2>&1
export PS4='+ [${BASH_SOURCE##*/}:${LINENO}] '
set -x

echo "Initializing Butano and Emulator.js submodules"
git submodule update --init --recursive

echo "Installing xpra"
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y xpra

echo "Finished postCreate.sh"

# xpra command in progress.
# TODO: Make this either autostart or be something the user can easily start
# Also debug issue with libresprite "installation"
# Hypothesis: the .gitignore stripped some needed stuff from libresprite
# xpra start :100 --bind-tcp=0.0.0.0:14500 --html=on     --start-child="xeyes" --no-daemon
