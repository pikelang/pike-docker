#!/bin/sh

#set -x
set -e

bin_docker=$(which docker)

# Docker hub
user="pikelang"
repo="pike"

# DRYRUN cheat code
if [[ -z "${DRYRUN}" ]]; then
  output_opt="--push"
else
  output_opt=""
fi


# Build Dockerfile and push to Docker hub

build_push()
{
  dir=$1

  if [ ! -d "${dir}" ]; then
    echo "${dir} is not a directory" >&2
    return
  fi

  # Prevent build and push if a SKIP file is present
  if [ -f "${dir}/SKIP" ]; then
    echo "${dir} is skipped" >&2
    return
  fi

  # Populate arch and tags from vars file
  arch=""
  tags=""

  # Skip if missing vars file
  if [ ! -f "${dir}/vars" ]; then
    echo "${dir} miss proper vars file, skipping" >&2
    return
  else
    . "${dir}/vars"
  fi

  version=$(basename "${dir}")

  # Get additional tags from vars file
  more_tags=""
  for t in ${tags}; do
    more_tags="${more_tags} --tag=${user}/${repo}:${t}"
  done

  ${bin_docker} buildx build \
    --tag="${user}/${repo}:${version}" ${more_tags}\
    --platform="${arch}" \
    ${output_opt} \
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
