#!/usr/bin/env bash

# clone the 6 repository from github
# and switch to the latest tag, and export the tag

if [[ -d k6vcs ]]
then
    echo "k6 repository already exists locally"
else
    git clone https://github.com/k6io/k6.git k6vcs
fi
(
  cd k6vcs
  git fetch
  # To override the latest git tag as the version, pass something else as the first arg.
  VERSION=${1:-$(git describe --tags --always)}
  # To overwrite the version details, pass something as the third arg. Empty string disables it.
  VERSION_DETAILS=${2-"$(date -u +"%FT%T%z")/$(git describe --always --long)"}
  echo "Latest version $VERSION"
  echo "Version details: $VERSION_VERSION_DETAILS"
  git checkout $VERSION
)





