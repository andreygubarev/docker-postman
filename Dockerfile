# syntax=docker/dockerfile:1
FROM --platform=linux/amd64 debian:bookworm-slim

RUN apt-get update &&  \
    apt-get install -yq --no-install-recommends curl && \
    rm -rf /var/lib/apt/lists/* && \
    curl -o- "https://dl-cli.pstmn.io/install/linux64.sh" | sh
