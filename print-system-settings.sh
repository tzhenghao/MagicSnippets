#!/bin/bash
set -euo pipefail

# Author: Zheng Hao Tan <tanzhao@umich.edu>
# MIT License

echo 'Here are your system settings:'
echo ''

# Print shell name.
echo 'Shell name:'
echo "${BASH:?}"
echo ''

# Print bash version.
echo 'Bash version:'
echo "${BASH_VERSION:?}"
echo ''

# Print home path.
echo ''
echo 'Home path:'
echo "${HOME:?}"
echo ''

# Print OS type.
echo ''
echo 'OS Type:'
echo "${OSTYPE:?}"
echo ''

cleanup() {
  true;
}
trap cleanup EXIT
