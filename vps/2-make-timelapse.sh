#!/bin/bash
#

cd /srv/www/x4m3-rocks/timelapse;
time ffmpeg -threads 0 -framerate 30 -r 30 -s 2000x2000 -pattern_type glob -i 'img/*.png' -vcodec libx264 -tune grain -preset fast -pix_fmt yuv420p -b:v 20M -y timelapse-new.mp4;
echo "timelapse-new made";
