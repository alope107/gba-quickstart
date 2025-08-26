#!/usr/bin/env bash
set -euo pipefail

# Ensure the env var exists
if [[ -z "${GITHUB_REPOSITORY:-}" ]]; then
  echo "Error: GITHUB_REPOSITORY not set" >&2
  exit 1
fi

# Extract the repo name after the slash (OWNER/REPO)
REPO_NAME="${GITHUB_REPOSITORY#*/}"

WORKDIR="/workspaces/${REPO_NAME}"

if [[ ! -d "$WORKDIR" ]]; then
  echo "Error: Workspace directory $WORKDIR not found" >&2
  exit 1
fi

cd "$WORKDIR"

echo "Starting HTTP server in $WORKDIR"
exec python3 -m http.server 8000
