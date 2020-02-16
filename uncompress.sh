#!/bin/bash
set -euo pipefail

# example: scheduler.tar.gz
packageFile="$1"

tar -xvzf "{$packageFile:?}"
