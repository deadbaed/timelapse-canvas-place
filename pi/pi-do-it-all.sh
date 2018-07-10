#!/bin/bash
#

cd /home/pi/wkf;

./pi/1-download-backups.sh;
./pi/2-download-timelapse.sh;
./pi/3-delete-remote-backups.sh;
