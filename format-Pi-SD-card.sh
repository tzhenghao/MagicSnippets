#!/bin/bash
set -euo pipefail

# Change these values!
IMAGE_PATH='2017-04-10-raspbian-jessie-lite.img'
DISK_NAME='/dev/disk2'
OUT_DISK_NAME='/dev/rdisk2'

diskutil unmountDisk "$DISK_NAME"
sudo dd bs=1m if="$IMAGE_PATH" of="$OUT_DISK_NAME"
