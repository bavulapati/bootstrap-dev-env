#!/bin/sh

set -o errexit
set -o nounset

if [ ! -x "$(command -v zsh)" ]
then
	exit 0
fi

sudo chsh -s $(which zsh)
