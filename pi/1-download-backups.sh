#!/bin/bash
#

folder=/home/pi/timelapse/arc/timelapse-$(date -u +\%Y\%m\%d);

cd /home/pi/timelapse/arc;

mkdir $folder;
cd $folder;

wget "https://x4m3.rocks/timelapse/arc/timelapse-$(date -u +\%Y\%m\%d)/img-$(date -u +\%Y\%m\%d).tar.xz";
wget "https://x4m3.rocks/timelapse/arc/timelapse-$(date -u +\%Y\%m\%d)/timelapse-$(date -u +\%Y\%m\%d)-30fps.mp4";

echo "archives downloaded"
