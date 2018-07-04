#!/bin/bash
#

cd /home/pi/timelapse;

# copy the temp timelapse to the vps
scp timelapse-temp.mp4 vps:web/13370403/timelapse.mp4;
echo "timelapse uploaded to the vps"

# publish the timelapse (display the new time on the website with php)
mv timelapse-temp.mp4 timelapse.mp4
echo "timelapse renamed"
