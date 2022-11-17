#!/bin/sh

set -o nounset
set -o errexit

if [ -x "$(command -v nvm)" ]
then
	exit 0
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
