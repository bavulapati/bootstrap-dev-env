#!/bin/sh

set -o errexit
set -o nounset

. "$(dirname "$0")"/common.sh

install_packages libx11-dev libxft-dev libxinerama-dev
