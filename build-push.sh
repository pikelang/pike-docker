#!/bin/sh

#set -x
set -e

bin_docker="/usr/local/bin/docker"

# Docker hub
user="bertrandlupart"
repo="pike"


# Build Dockerfile and push to Docker hub

build_push()
{
  dir=$1

  if [ ! -d "${dir}" ]; then
    echo "${dir} is not a directory" >&2
    return
  fi

  # Populate arch and tags
  arch=""
  tags=""
  . "${dir}/vars"

  vers=$(basename "${dir}")

  # Get additional tags from vars file
  more_tags=""
  for t in ${tags}; do
    more_tags="${more_tags} --tag=${user}/${repo}:${t}"
  done

  ${bin_docker} buildx build \
    --tag="${user}/${repo}:${vers}" ${more_tags}\
    --platform="${arch}" \
    --push \
    "${dir}"
}


# Either give directory/ies as argument(s), either loop over docker/ directory

if [ $# -eq 0 ]; then
  for elem in "docker"/*; do
    echo "building ${elem}"
    build_push "${elem}"
  done
else
  for elem in "$@"; do
    echo "building ${elem}"
    build_push "${elem}"
  done
fi
