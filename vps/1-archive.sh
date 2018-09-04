#!/bin/bash
#

#tar -cvJf img-$(date -u +\%Y\%m\%d).tar.xz img/;

cd /home/x4m3/web/x4m3-rocks/timelapse;
#use as many cores available with "-T 0" (see xz --help)
time tar -cvf - img/ | xz -T 0 > img-$(date -u +\%Y\%m\%d).tar.xz;
echo "archived in tar.xz";
