#!/bin/sh

set -o errexit
set -o nounset

SRC_DIR=~/dev/dwm

if [ -d "$SRC_DIR" ] 
then
	exit 0
fi

# Pull dwm source code
git clone git://git.suckless.org/dwm $SRC_DIR

# Install dwm
sudo make -C $SRC_DIR clean install
