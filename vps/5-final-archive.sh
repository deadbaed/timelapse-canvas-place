#!/bin/bash
#

folder=/home/pi/timelapse/arc/timelapse-$(date -u +\%Y\%m\%d);

cd /home/pi/timelapse;

mkdir -p $folder;
echo "folder" $folder "created";

mv timelapse-$(date -u +\%Y\%m\%d)-30fps.mp4 $folder;
mv img-$(date -u +\%Y\%m\%d).tar.xz $folder;

echo "moved timelapse and images for" $(date -u +\%Y\%m\%d) "in archive folder";
