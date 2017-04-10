#!/bin/bash
set -euo pipefail

#/ Usage: reminder.sh <sleepTime> <message>
#/ Sets a timer of sleepTime seconds with the given message.
usage() {
    grep '^#/' "$0" | cut -c4-
    exit 0
}

expr "$*" : ".*--help" > /dev/null && usage

sleepTime="$1"
message="$2"

(sleep "${sleepTime:?}"; echo "${message:?}") &

cleanup() {
  true;
}
trap cleanup EXIT
