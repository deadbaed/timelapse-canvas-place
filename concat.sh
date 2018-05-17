#!/bin/bash
#

cd /home/pi/timelapse;

# copy current timelapse as old to not overwrite it when running ffmpeg
cp timelapse.mp4 timelapse-old.mp4;

time ffmpeg -f concat -i concat-files.txt -c copy -y /home/pi/timelapse/timelapse.mp4;

# rename 'timelapse-new.mp4' to put the current date for the archives
mv timelapse-new.mp4 timelapse-$(date -u +\%Y\%m\%d)-30fps.mp4;
