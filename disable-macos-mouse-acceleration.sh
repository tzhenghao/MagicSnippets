#!/bin/bash
set -euo pipefail

# Author: Zheng Hao Tan
# Email: hi@zhenghaotan.com
# This shell scripts disables mouse acceleration on a MacOS device.

echo 'The current mouse scaling value is:'
defaults read .GlobalPreferences com.apple.mouse.scaling

echo 'Disabling mouse acceleration...'
defaults write .GlobalPreferences com.apple.mouse.scaling -1
echo 'Done!'

echo 'The final mouse scaling value is:'
defaults read .GlobalPreferences com.apple.mouse.scaling
