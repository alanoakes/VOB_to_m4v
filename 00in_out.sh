#!/bin/bash
#src= https://winaero.com/convert-webp-png-linux/
#src= https://ostechnix.com/youtube-dl-tutorial-with-examples-for-beginners/
A=(
  "https://www.youtube.com/watch?v=6KQLOuIKaRA"
  "https://www.youtube.com/watch?v=HV_LUs2lnIQ"
  "https://www.youtube.com/watch?v=eLrGM26pmM0"
  "https://www.youtube.com/watch?v=aS4iM6KpPYo"
  "https://www.youtube.com/watch?v=aS4iM6KpPYo"
  "https://www.youtube.com/watch?v=g_igCcWAMAM"
  "https://www.youtube.com/watch?v=9aaVy1AmFX4"
)


for a in ${A[@]}; do
  youtube-dl \
    -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' \
    --write-description \
    --write-info-json \
    --write-annotations \
    --write-sub \
    --write-thumbnail ${a}
done


for i in *.webp; do
  dwebp "$i" -o "${i%.*}.png"
done
