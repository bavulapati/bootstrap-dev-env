#!/bin/sh

set -o errexit
set -o nounset

XINITRC_FILE="$HOME/.xinitrc"

if [ ! -f "$XINITRC_FILE" ]
then
	echo "exec dwm" > $XINITRC_FILE
fi


DESKTOP_FILE="/usr/share/xsessions/dwm.desktop"

if [ -f "$DESKTOP_FILE" ]
then
	exit 0
fi

echo "inside if desktop"
cat <<EOF > "/tmp/desktop_file"
[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=Dynamic window manager
Exec=/usr/local/bin/dwm
Icon=dwm
Type=XSession
EOF

sudo mv /tmp/desktop_file $DESKTOP_FILE
