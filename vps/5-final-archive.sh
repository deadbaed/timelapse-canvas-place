#!/bin/bash
#

folder=/home/x4m3/web/13370403/timelapse/arc/timelapse-$(date -u +\%Y\%m\%d);

cd /home/x4m3/web/13370403/timelapse;

mkdir -p $folder;
echo "folder" $folder "created";

mv timelapse-$(date -u +\%Y\%m\%d)-30fps.mp4 $folder;
mv img-$(date -u +\%Y\%m\%d).tar.xz $folder;

echo "moved timelapse and images for" $(date -u +\%Y\%m\%d) "in archive folder";
