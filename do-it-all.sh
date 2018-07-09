#!/bin/bash
#

cd /home/pi/wkf;

echo "1. archive images"
./archive-xz.sh

echo "2. make the timelapse of the day"
#./make-tml.sh

echo "3. delete old images"
./delete-img.sh

echo "4. concat the old and new timelapses"
#./concat.sh

echo "5. archive the video and the images"
./final-archive.sh

echo "6. upload the timelapse to the vps and rename the final timelapse"
#./vps-and-publish.sh

echo "done, seeya tomorrow :)"
echo "made with love by http://philippeloctaux.com"
