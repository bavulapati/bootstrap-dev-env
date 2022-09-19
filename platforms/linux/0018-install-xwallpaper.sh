#!/bin/sh

set -o errexit
set -o nounset

. "$(dirname "$0")"/common.sh

if [ -x "$(command -v xwallpaper)" ]
then
	exit 0
fi

install_packages xwallpaper
