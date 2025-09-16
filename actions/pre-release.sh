#!/bin/bash
#
# pre-release.sh - prepare the repository for a pre-release
#
# Usage:
#   ./update-repo [OPTIONS]
#
# Options:
#   -h, --help            Show this help message and exit
#
# Dependencies:
#   - Variables from config/env.sh must be set
#   - Logging utilities from scripts/lib/logging.sh
#
# Notes:
#   - Ensure this script has execute permission.
#
# Copyright 2025 DigiXess
# Author URI: https://www.digixess.com
# License: https://www.digixess.com/license
# Created by: Preeya Gowda
# Created on: 20-July-2025
# Last modified by: Preeya Gowda on 16-Sept-2025

# File Version: 1.0.0
# GIT Version: 1.0.1

# Print usage/help message
usage() {
  cat <<EOF
Usage: $(basename "$0") [TAG_VERSION] [OPTIONS]

Update tag versions for all script files in the repository.

Arguments:
  TAG_VERSION           The new tag version to set (e.g., 1.2.3)

Options:
  -h, --help            Show this help message and exit
EOF
}

# Parse arguments
TAG_VERSION=""
while [[ $# -gt 0 ]]; do
  case $1 in
    -h|--help)
      usage
      exit 0
      ;;
    -t|--tag)
      TAG_VERSION="$2"
      shift 2
      ;;
    *)
      if [[ -z "$TAG_VERSION" ]]; then
        TAG_VERSION="$1"
      fi
      shift
      ;;
  esac
done

if [[ -z "$TAG_VERSION" ]]; then
  echo "Error: TAG_VERSION argument is required. Use -t <tag> or provide as first argument." >&2
  usage
  exit 1
fi

set -euo pipefail
IFS=$'\n\t'

# Load environment
ENV_FILE="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)/config/env.sh"
if [[ -f "$ENV_FILE" ]]; then
  source "$ENV_FILE"
else
  echo "env.sh not found at $ENV_FILE" >&2
  exit 1
fi
LOG_FILE="$LOG_DIR/pre-release-$(date +"%Y%m%d-%H%M%S").log"
LOGGING_LIB="$ROOT_DIR/scripts/lib/logging.sh"
if [[ -f "$LOGGING_LIB" ]]; then
  source "$LOGGING_LIB"
else
  echo "Logging Library $LOGGING_LIB not found!" >&2
  exit 1
fi

# Update GIT Version in all files under scripts directory
SCRIPTS_DIR="$ROOT_DIR/scripts"
find "$SCRIPTS_DIR" -type f -exec sed -i "s/^# GIT Version: .*/# GIT Version: $TAG_VERSION/" {} +
log_info "Updated GIT Version to $TAG_VERSION in all script files under $SCRIPTS_DIR."