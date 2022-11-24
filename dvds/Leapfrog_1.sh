#!/bin/bash

# Set Video Variables                                                        +
# + -------------------------------------------------------------------------- +
title="LEAPFROG_GRS"
A=(
  "01_0"
  "01_1"
  "01_2"
  "01_3"
)

# Encode VOB to m4v                                                          +
# + -------------------------------------------------------------------------- +
dvd="/media/oakespar/${title}/VIDEO_TS/"
for a in ${A[@]}; do
  ffmpeg -i "${dvd}VTS_${a}.VOB" \
    -vf format=yuv420p "ch${a}.m4v"
done

# Encode to .ts for Single Output                                            +
# + -------------------------------------------------------------------------- +
for a in ${A[@]}; do
  ffmpeg -i "ch${a}.m4v" \
    -c copy \
    -bsf:v h264_mp4toannexb "${a}.ts"
done

# Merge m4v to Single m4v                                                    +
# + -------------------------------------------------------------------------- +
vA=$( IFS=$'|'; echo "${A[*]/%/.ts}" )
ffmpeg -i concat:"$vA" -c copy \
  -bsf:a aac_adtstoasc "${title}.m4v"

# Remove Excess Files                                                        +
# + -------------------------------------------------------------------------- +
rm *.ts
rm ch*.m4v
