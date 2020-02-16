#!/bin/bash
set -euo pipefail

# Author: Zheng Hao Tan <tanzhao@umich.edu>
# MIT License

#/ Usage: compress.sh <packageName> <folderName>
#/ Compresses the given folder to a tar.gz package with the given package name.
usage() {
    grep '^#/' "$0" | cut -c4-
    exit 0
}

expr "$*" : ".*--help" > /dev/null && usage

packageName='scheduler.tar.gz'
folderName='scheduler'

tar -cvzf "${packageName:?}" "${folderName:?}"
