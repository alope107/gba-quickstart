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
