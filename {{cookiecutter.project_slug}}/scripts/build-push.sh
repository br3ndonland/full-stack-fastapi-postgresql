#! /usr/bin/env sh

# Exit in case of error
set -e

# Allow in Shellcheck: https://github.com/koalaman/shellcheck/wiki/Integration
# shellcheck -x
TAG=${TAG} \
  FRONTEND_ENV=${FRONTEND_ENV-production} \
  . ./scripts/build.sh

docker-compose -f docker-stack.yml push
