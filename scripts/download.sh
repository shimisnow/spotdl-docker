#!/bin/bash

options=(
  '--audio youtube-music'
  '--lyrics musixmatch'
  '--generate-lrc'
)

configs=$(printf "%s " "${options[@]}")

# read all lines and stores it in an array
readarray -t musics < $URLS_FILE_SOURCE

for track in "${musics[@]}"; do
  # remove new lines to avoid url errors
  track=$(echo "$track" | tr -d '\n\r')

  # does the trick
  spotdl download $track $configs --output "$OUTPUT_DIRECTORY/{title} - {artist}.{output-ext}"
done
