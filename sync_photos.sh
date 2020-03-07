#!/bin/bash
set -euo pipefail

# Author: Zheng Hao Tan <hi@zhenghaotan.com>
# MIT License

ORIGIN_DIR='/Volumes/0xalateDrive2/Photos/'
DESTINATION_DIR='/Volumes/0xalateDrive4/Photos'

pause() {
   read -p "$*"
}

# Sync photos directory with rsync - dry run
rsync -anv "$ORIGIN_DIR" "$DESTINATION_DIR"

pause 'Starting rsync. Press [Enter] key to continue...'
rsync -aP "$ORIGIN_DIR" "$DESTINATION_DIR"
