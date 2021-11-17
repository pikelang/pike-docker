#!/bin/sh

# Docker hub
USER="bertrandlupart"
REPO="pike"
DHUB="${USER}/${REPO}"

ARCH="linux/amd64,linux/i386,linux/arm64,linux/arm"

/usr/local/bin/docker buildx build -t ${DHUB}:7.8.866 -t ${DHUB}:7.8-latest -t ${DHUB}:oldstable-latest --platform=${ARCH} --push .
