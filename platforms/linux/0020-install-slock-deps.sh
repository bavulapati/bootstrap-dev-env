#!/bin/sh

set -o errexit
set -o nounset

. "$(dirname "$0")"/common.sh

install_packages libxrandr-dev
