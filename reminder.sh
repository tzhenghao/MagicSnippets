#!/bin/bash
set -euo pipefail

sleepTime="$1"
message="$2"

(sleep "${sleepTime:?}"; echo "${message:?}") &
