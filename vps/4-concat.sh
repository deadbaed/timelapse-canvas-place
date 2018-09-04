#!/bin/bash
#

cd /home/x4m3/web/x4m3-rocks/timelapse;

# copy current timelapse as old to not overwrite it when running ffmpeg
cp timelapse.mp4 timelapse-old.mp4;
echo "copied timelapse.mp4 to timelapse-old.mp4"

time ffmpeg -f concat -i concat-files.txt -c copy -y timelapse.mp4;

# rename 'timelapse-new.mp4' to put the current date for the archives
mv timelapse-new.mp4 timelapse-$(date -u +\%Y\%m\%d)-30fps.mp4;
echo "moved timelapse-new.mp4 to have the date"

# remove 'timelapse-old.mp4' cause no longer neeeded (plus there is backups for every day)
rm timelapse-old.mp4
echo "removed timelapse-old.mp4"
