#!/usr/bin/env bash

set -e          # exit on command errors
set -o nounset  # abort on unbound variable
set -o pipefail # capture fail exit codes in piped commands
# set -x          # execution tracing debug messages

indentation=""

while [[ $# -gt 0 ]] && [[ ."$1" = .-*  || ."$1" = .--* ]]; do
    # Get param and value using parameter expansion, splitting on = or " "
    param="${1%[ =]*}"
    value="${1#*[ =]}"
    shift
    case "$param" in
        -i | --indent)
            indentation="-i $value"
            ;;
        -*)
            echo "Error: Unknown option: $param" >&2
            exit 1
            ;;
        *)  # No more options
            break 2
            ;;
    esac
done

for file in "$@"; do
    if file "$file" | grep -i 'shell script' > /dev/null; then
        shfmt -l -w $indentation "$file"
    fi
done
