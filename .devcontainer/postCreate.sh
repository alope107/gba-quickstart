#!/usr/bin/env bash
set -Eeuo pipefail

echo "Beginning postCreate.sh"

# Log for postCreate script
exec > >(tee -a /workspaces/postCreate.log) 2>&1
export PS4='+ [${BASH_SOURCE##*/}:${LINENO}] '
set -x

echo "Initializing Butano submodule"
# Keep submodules in sync and fetch them:
git submodule update --init --recursive

echo "Finished postCreate.sh"