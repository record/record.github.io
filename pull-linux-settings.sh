#!/bin/sh

TEMP_FILE=$(mktemp)

wget -O "$TEMP_FILE" "https://bitbucket.org/recordlyl/linux-settings/get/default.zip"
unzip -j "$TEMP_FILE" -x "*/.hg_archival.txt" -d "$HOME"

rm "$TEMP_FILE"
