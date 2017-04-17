#!/bin/bash
set -euo pipefail

# Author: Zheng Hao Tan <tanzhao@umich.edu>
# MIT License

# This command counts the number of lines of code in a Git repository
git ls-files | xargs wc -l
