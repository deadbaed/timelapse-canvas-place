#!/bin/sh
#

cd /home/x4m3/timelapse;

echo "1. archive images"
./vps/1-archive.sh

echo "2. make the timelapse of the day"
./vps/2-make-timelapse.sh

echo "3. delete old images"
./vps/3-delete-images.sh

echo "4. concat the old and new timelapses"
./vps/4-concat.sh

echo "5. archive the video and the images"
./vps/5-final-archive.sh

echo "done, seeya tomorrow :)"
echo "made with love by http://philippeloctaux.com"
