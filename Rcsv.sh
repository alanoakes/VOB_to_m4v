#!/bin/bash
# this file was made 2021-12-20
#src= https://www.youtube.com/watch?v=OecFFZpIkDc

OLDIFS=$IFS
IFS=","

while read user job uid location
do
  echo "$user"
  echo "$job"
  echo "$uid"
  echo "$location"
done < $1

IFS=$OLDIFS
