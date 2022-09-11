#!/bin/sh

set -o errexit
set -o nounset

if [ -n "$(command -v nvm)" ]
then
	exit 0
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh
