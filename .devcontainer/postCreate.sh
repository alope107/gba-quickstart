#!/usr/bin/env bash
set -Eeuo pipefail

echo "Beginning postCreate.sh"

# Log for postCreate script
exec > >(tee -a /workspaces/postCreate.log) 2>&1
export PS4='+ [${BASH_SOURCE##*/}:${LINENO}] '
set -x

# echo "Installing npm"
# sudo apt-get update
# sudo apt-get install -y nodejs npm

echo "Initializing Butano and Emulator.js submodules"
git submodule update --init --recursive

# echo "NPM install for Emulator.js"
# npm install --prefix third_party/EmulatorJS

echo "Finished postCreate.sh"
