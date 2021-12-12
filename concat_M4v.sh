#!/bin/bash
#https://grenville.wordpress.com/2016/01/08/splitting-and-merging-of-m4v-video-files-with-ffmpeg/
#/media/parker/SBX_30_N/VIDEO_TS/VTS_16_0.VOB
#ffmpeg -i VTS_02_1.VOB -vf format=yuv420p out1.m4v

dDIR="/media/parker/SBX_30_N/VIDEO_TS/"

ffmpeg -i ${dDIR}VTS_02_1.VOB -vf -vf format=yuv420p ch02.m4v


ffmpeg -i "ch02.m4v"  -c copy -bsf:v h264_mp4toannexb "1.ts"
ffmpeg -i "ch03.m4v"  -c copy -bsf:v h264_mp4toannexb "2.ts"
ffmpeg -i "ch04.m4v"  -c copy -bsf:v h264_mp4toannexb "3.ts"
ffmpeg -i "ch07.m4v"  -c copy -bsf:v h264_mp4toannexb "4.ts"
ffmpeg -i "ch08.m4v"  -c copy -bsf:v h264_mp4toannexb "5.ts"
ffmpeg -i "ch11.m4v"  -c copy -bsf:v h264_mp4toannexb "6.ts"
ffmpeg -i "ch12.m4v"  -c copy -bsf:v h264_mp4toannexb "7.ts"
ffmpeg -i concat:"1.ts|2.ts|3.ts|4.ts|5.ts|6.ts|7.ts" \
        -c copy \
        -bsf:a aac_adtstoasc "out.m4v"

rm *.ts
