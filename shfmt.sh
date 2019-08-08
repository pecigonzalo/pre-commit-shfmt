#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

DEBUG=${DEBUG:=0}
[[ $DEBUG -eq 1 ]] && set -o xtrace

if ! command which shfmt &>/dev/null; then
  echo >&2 'shfmt command not found'
  exit 1
fi

shfmt "$@"
