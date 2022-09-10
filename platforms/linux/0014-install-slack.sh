#!/bin/sh

set -o errexit
set -o nounset

if [ -x "$(command -v slack)" ]
then
	exit 0
fi

sudo snap install slack
