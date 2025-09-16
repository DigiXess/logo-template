#!/bin/bash

# Set root directory to the location of this script
ROOT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPTS_DIR="$ROOT_DIR/scripts"
export ROOT_DIR
export SCRIPTS_DIR
LOG_DIR="$ROOT_DIR/logs"
mkdir -p "$LOG_DIR"

# Add scripts directory to PATH
export PATH="$SCRIPTS_DIR:$PATH"

# Brand Details 
BRAND_NAME="DigiXess"  # Default brand NAME
