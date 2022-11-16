#!/bin/sh

set -o errexit
set -o nounset

OMZ_FILE="$HOME/.oh-my-zsh"

if [ -d "$OMZ_FILE" ]
then
	exit 0
fi

if [ -x "$(command -v omz)" ]
then
	exit 0
fi

echo "installing omz"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
