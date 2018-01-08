#!/usr/bin/env bash

set -e          # exit on command errors
set -o nounset  # abort on unbound variable
set -o pipefail # capture fail exit codes in piped commands
# set -x          # execution tracing debug messages

indentation=""

while [[ $# -gt 0 ]] && [[ ."$1" = .-*  || ."$1" = .--* ]]; do
    opt=$1
    shift
    case "$opt" in
        -i | --indent)
            indentation="-i $1"
            ;;
        -*)
            echo "Error: Unknown option: $1" >&2
            return
            ;;
        *)  # No more options
            break 2
            ;;
    esac
done

for file in "$@"; do
    if file "$file" | grep -Pi 'shell script' > /dev/null; then
        shfmt -l -w $indentation "$file"
    fi
done
