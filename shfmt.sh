#!/usr/bin/env bash

set -e          # exit on command errors
set -o nounset  # abort on unbound variable
set -o pipefail # capture fail exit codes in piped commands
# set -x          # execution tracing debug messages

indentation=""
diff=""
ret=0

while [[ $# -gt 0 ]] && [[ ."$1" = .-*  || ."$1" = .--* ]]; do
    # Get param and value using parameter expansion, splitting on = or " "
    param="${1%[ =]*}"
    value="${1#*[ =]}"
    shift
    case "$param" in
        -i | --indent)
            indentation="-i $value"
            ;;
        -d)
            diff="-d"
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

command -v file > /dev/null
command -v grep > /dev/null

for file in "$@"; do
    if file "$file" | grep -iq 'shell script'; then
        shfmt -l -w $indentation $diff "$file" || ret=$?
    fi
done
exit $ret
