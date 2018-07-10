#!/bin/bash
#

cd /home/pi/timelapse;
scp -r vps:web/13370403/timelapse/arc/timelapse-$(date -u +\%Y\%m\%d) /home/pi/timelapse/arc;
