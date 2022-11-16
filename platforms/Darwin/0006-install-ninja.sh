#!/bin/sh

set -o nounset
set -o errexit

if [ -x "$(command -v ninja)" ]
then
  exit 0
fi

HOMEBREW_NO_ANALYTICS=1 HOMEBREW_NO_AUTO_UPDATE=1 \
  brew install ninja
