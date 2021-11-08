#!/bin/sh

# Docker hub
USER="bertrandlupart"
REPO="pike"
PATH="${USER}/${REPO}"

ARCH="linux/amd64,linux/i386,linux/arm64,linux/arm"

/usr/local/bin/docker buildx build -t ${PATH}:7.8.866 -t ${PATH}:7.8-latest -t ${PATH}:oldstable-latest --platform=${ARCH} --push .
