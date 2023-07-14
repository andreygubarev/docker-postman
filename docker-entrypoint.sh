#!/bin/sh
set -eux

if [ -n "${POSTMAN_API_KEY}" ]; then
    postman login --with-api-key "${POSTMAN_API_KEY}"
fi

postman "$@"
