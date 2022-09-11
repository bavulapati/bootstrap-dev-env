#!/bin/sh

set -o errexit
set -o nounset

. "$(dirname "$0")"/common.sh

if [ -x "$(command -v ninja)" ]
then
	exit 0
fi

install_packages ninja-build 
