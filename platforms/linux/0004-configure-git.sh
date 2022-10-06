#!/bin/sh

set -o errexit
set -o nounset

# Configure git
git config --global  user.email "bavulapati@gmail.com"
git config --global  user.name "Balakrishna Avulapati (Bala)"
git config --global commit.gpgsign true
git config --global init.defaultBranch main
