#!/bin/bash
# + ----------------------------------------------------- +
# + Make File Array Vars                                  +
# + ----------------------------------------------------- +
dvd="/media/home/username/.../VIDEO_TS/"
A=(
  "02_1"
  "04_1"
  "05_1"
  "07_1"
  "08_1"
  "08_2"
)

# + ----------------------------------------------------- +
# + Encode VOB to m4v                                     +
# + ----------------------------------------------------- +
dvd="/media/parker/SBX_30_N/VIDEO_TS/"
for a in ${A[@]}; do
  ffmpeg -i "${dvd}VTS_${a}.VOB" \
    -vf format=yuv420p "ch${a}.m4v"
done

# + ----------------------------------------------------- +
# + Encode to .ts for Single Output                       +
# + ----------------------------------------------------- +
for a in ${A[@]}; do
  ffmpeg -i "ch${a}.m4v" \
    -c copy \
    -bsf:v h264_mp4toannexb "${a}.ts"
done

# + ----------------------------------------------------- +
# + Merge m4v to Single m4v                               +
# + ----------------------------------------------------- +
vA=$( IFS=$'|'; echo "${A[*]/%/.ts}" )
ffmpeg -i concat:"$vA" -c copy \
  -bsf:a aac_adtstoasc "output.m4v"

rm *.ts
rm ch*.m4v
