#!/bin/sh
set -eu

if [ -n "${POSTMAN_API_KEY}" ]; then
    postman login --with-api-key "${POSTMAN_API_KEY}"
fi

eval "set -- $*"
postman "$@"
