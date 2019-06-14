#!/bin/bash
#

curl -L https://canvas.place/api/board-image > /srv/www/x4m3-rocks/timelapse/img/img-$(date -u +\%Y\%m\%d-\%H\%M).png
