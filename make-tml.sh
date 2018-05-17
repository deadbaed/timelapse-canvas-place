#!/bin/bash
#

file=timelapse-$(date -u +\%Y\%m\%d)-30fps.mp4;

cd /home/pi/timelapse;
time ffmpeg -threads 0 -framerate 30 -r 30 -s 1600x1600 -pattern_type glob -i 'img/*.png' -vcodec libx264 -tune grain -preset fast -pix_fmt yuv420p -b:v 20M -y /home/pi/timelapse/$file;
echo "timelapse made for" $(date -u +\%Y\%m\%d);
