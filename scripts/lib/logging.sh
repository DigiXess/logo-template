#!/bin/bash
# GIT Version: 1.2.0
# Last modified by: Preeya Gowda on 14 June 2025 18:46
#
# Description:     This script provides logging utility functions for scripts.
#
# Usage:         source logging.sh in the file where you want to use logging.

# Variables:
#   - LOG_FILE: Path to the log file - Passed from the script using this logging utility
#   - DEBUG: Set to 1 to enable debug logging set in config/env.sh

# Notes:
#   - Ensure this script does not have execute permission.
#   - This script is intended to be sourced, not executed directly.

# Copyright 2025 DigiXess
# Author URI: https://www.digixess.com
# License: https://www.digixess.com/license
# Created by: Preeya Gowda
# Created on: 16-Sept-2025
# Last modified by: Preeya Gowda on 16-Sept-2025 17:00
# File Version:    1.0.0
# GIT Version: 1.2.0

# log_debug
# Description: Logs debug messages if DEBUG=1.
# Globals: LOG_FILE (used), DEBUG (used).
# Arguments: All arguments are concatenated into the log message.
# Outputs: Debug message to STDOUT and appends to LOG_FILE.
# Returns: None.
function log_debug() {
  if [[ "$DEBUG" == "1" ]]; then
    echo "[DEBUG] $*" | tee -a "$LOG_FILE"
  fi
}

# log_info
# Description: Logs informational messages.
# Globals: LOG_FILE (used).
# Arguments: All arguments are concatenated into the log message.
# Outputs: Info message to STDERR and appends to LOG_FILE.
# Returns: None.
function log_info() {
  echo "[INFO] $*" | tee -a "$LOG_FILE" >&2
}

# log_warning
# Description: Logs warning messages.
# Globals: LOG_FILE (used).
# Arguments: All arguments are concatenated into the log message.
# Outputs: Warning message to STDERR and appends to LOG_FILE.
# Returns: None.
function log_warning() {
  echo "[WARNING] $*" | tee -a "$LOG_FILE" >&2
}

# log_error
# Description: Logs error messages.
# Globals: LOG_FILE (used).
# Arguments: All arguments are concatenated into the log message.
# Outputs: Error message to STDERR and appends to LOG_FILE.
# Returns: None.
function log_error() {
  echo "[ERROR] $*" | tee -a "$LOG_FILE" >&2
}
