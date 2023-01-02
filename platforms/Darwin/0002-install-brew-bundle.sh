#!/bin/sh

set -o nounset
set -o errexit

brew bundle --file platforms/Darwin/Brewfile
