#!/usr/bin/env bash
set -e

source fetch_k6.sh

K6VERSION=${1}
if [ -z "$K6VERSION" ]
then
  echo "You must specify a version tag as the first argument"
  exit 1
fi

DOCKER_REPOSITORY=24hoursmedia/k6-xarch
DOCKER_VERSIONPREFIX=${2}

(
  cd k6vcs
  git checkout ${K6VERSION}
)

PLATFORM=linux/arm64,linux/arm/v7,linux/amd64,linux/386
docker buildx create --use --node t4k6builder
docker buildx build  --push --platform=${PLATFORM} --tag ${DOCKER_REPOSITORY}:${DOCKER_VERSIONPREFIX}${K6VERSION} .