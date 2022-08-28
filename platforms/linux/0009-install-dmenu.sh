#!/bin/sh

set -o errexit
set -o nounset

SRC_DIR=~/dev/dmenu

if [ -d "$SRC_DIR" ] 
then
	exit 0
fi

# Pull dmenu source code
git clone git://git.suckless.org/dmenu $SRC_DIR

# Install dmenu
sudo make -C $SRC_DIR clean install
