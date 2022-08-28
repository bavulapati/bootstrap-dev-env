#!/bin/sh

set -o errexit
set -o nounset

if [ -x "$(command -v omz)" ]
then
	exit 0
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
