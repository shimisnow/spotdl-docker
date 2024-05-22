#!/bin/bash

# read all lines and stores it in an array
readarray -t musics < $URLS_FILE_SOURCE

for track in "${musics[@]}"; do
  # remove new lines to avoid url errors
  track=$(echo "$track" | tr -d '\n\r')

  # does the magic
  spotdl $track --output $OUTPUT_DIRECTORY
done
