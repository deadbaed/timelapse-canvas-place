#!/bin/bash
#

time tar -cvzf img-$(date -u +\%Y\%m\%d).tar.gz img/;
echo "archived in tar.gz";
