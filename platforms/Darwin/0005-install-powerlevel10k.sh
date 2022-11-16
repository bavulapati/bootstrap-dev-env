#!/bin/sh

set -o nounset
set -o errexit

# TODO: Skip p10k installation on detection
HOMEBREW_NO_ANALYTICS=1 HOMEBREW_NO_AUTO_UPDATE=1 \
  brew install romkatv/powerlevel10k/powerlevel10k 
