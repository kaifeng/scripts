#!/bin/bash
SRC=$1
TARGET=$2

videos=$(ls "$SRC")
for v in $videos; do
    echo "Processing $v"
    ffmpeg -i "$SRC"/"$v" -vn -c:a mp3 "$TARGET"/"$v".mp3 1>/dev/null
done
echo "All Done!"
