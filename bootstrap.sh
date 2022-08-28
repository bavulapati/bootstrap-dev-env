#!/bin/sh

set -o errexit
set -o nounset

if [ $# -lt 2 ]
then
	echo "Usage: $0 <bootstrap directory> <platform>" 1>&2
	exit 1
fi

BOOTSTRAP_DIRECTORY="$1"
OPERATING_SYSTEM="$2"
BOOTSTRAP_PLATFORM_DIRECTORY="$BOOTSTRAP_DIRECTORY/$OPERATING_SYSTEM"

if [ ! -d "$BOOTSTRAP_PLATFORM_DIRECTORY" ]
then
	exit 0
fi

for script in "$BOOTSTRAP_PLATFORM_DIRECTORY"/*
do
	if [ -x "$script" ]
	then
		"$script"
	fi
done
