#!/bin/sh

set -o errexit
set -o nounset

SRC_DIR=~/dev/st

if [ -d "$SRC_DIR" ] 
then
	exit 0
fi

# Pull st source code
git clone git://git.suckless.org/st $SRC_DIR

# Install st 
sudo make -C $SRC_DIR clean install
