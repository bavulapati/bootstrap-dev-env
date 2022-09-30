#!/bin/sh

set -o errexit
set -o nounset

SRC_DIR=~/dev/slock

if [ -d "$SRC_DIR" ] 
then
	exit 0
fi

# Pull st source code
git clone git://git.suckless.org/slock $SRC_DIR

# Install st 
sudo make -C $SRC_DIR clean install
