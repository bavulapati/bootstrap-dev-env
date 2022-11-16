#!/bin/sh

set -o nounset
set -o errexit

if [ -x "$(command -v brew)" ]
then
	exit 0
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
