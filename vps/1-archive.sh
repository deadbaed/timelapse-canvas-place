#!/bin/bash
#

#tar -cvJf img-$(date -u +\%Y\%m\%d).tar.xz img/;

cd /srv/www/x4m3-rocks/timelapse;
# -T 3 to limit to 3 threads, otherwise xz uses too much ram and the process gets killed
time tar -cvf - img/ | xz -T 3 > img-$(date -u +\%Y\%m\%d).tar.xz;
echo "archived in tar.xz";
