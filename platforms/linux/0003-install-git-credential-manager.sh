#!/bin/sh

set -o errexit
set -o nounset

. "$(dirname "$0")"/common.sh

if [ -x "$(command -v git-credential-manager-core)" ]
then
	exit 0
fi

PACKAGE_FILE="/tmp/gcm.deb"

# Download Git Credential Manager package
curl -fSLo $PACKAGE_FILE https://github.com/GitCredentialManager/git-credential-manager/releases/download/v2.0.785/gcm-linux_amd64.2.0.785.deb

# Install the package
install_packages $PACKAGE_FILE
