#!/bin/bash
#

cd /home/pi/timelapse;

# copy current timelapse as old to not overwrite it when running ffmpeg
cp timelapse.mp4 timelapse-old.mp4 

time ffmpeg -f concat -i concat-files.txt -c copy -y /home/pi/timelapse/timelapse.mp4;
