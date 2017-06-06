#!/bin/sh

mkdir "./converted"

for file in $(ls)
do
  if [ $(echo "$file") != "convert.sh" ]; then
    echo "$file"
    ffmpeg -i "$file" -sample_fmt s16 "./converted/$file"
  else
    echo "lol!"
  fi
done
