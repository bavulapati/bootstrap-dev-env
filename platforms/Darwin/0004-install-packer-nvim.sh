#!/bin/sh

set -o errexit
set -o nounset

PACKER_DIR="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"

if [ -d "$PACKER_DIR" ]
then
	exit 0
fi

echo "cloning packer.nvim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim "$PACKER_DIR"
