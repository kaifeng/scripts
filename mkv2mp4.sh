#!/bin/bash
SRC=$1
TARGET=$2

[[ $TARGET == "" ]] && TARGET=$SRC

videos=$(ls "$SRC")
for v in $videos; do
    echo "Processing $v"
    ffmpeg -i "$SRC"/"$v" -vcodec copy -acodec copy "$TARGET"/"$v".mp4 1>/dev/null
done
echo "All Done!"
