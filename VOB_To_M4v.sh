#!/bin/bash
# + ----------------------------------------------------- +
# + Make File Array Vars                                  +
# + ----------------------------------------------------- +
A=( 02 15 16 19 20 23 24 27 31 )

# + ----------------------------------------------------- +
# + Encode VOB to m4v                                     +
# + ----------------------------------------------------- +
dvd="/media/parker/SBX_30_N/VIDEO_TS/"
for a in ${A[@]}; do
  ffmpeg -i "${dvd}VTS_${a}_1.VOB" \
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
