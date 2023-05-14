#!/bin/sh
set -e

if [ "${1#-}" != "${1}" ] || [ -z "$(command -v "${1}")" ]; then
  set -- octoprint --basedir /data/octoprint "$@"
fi

exec "$@"
