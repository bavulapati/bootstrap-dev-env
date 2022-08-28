#!/bin/sh

set -o errexit
set -o nounset

install_packages() {
  sudo apt-get install --no-install-recommends -y "$@"
}
