#!/bin/sh

set -o errexit
set -o nounset

# configure git-credential-manager
git-credential-manager-core configure
