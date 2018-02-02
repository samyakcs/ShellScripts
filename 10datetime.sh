#!/bin/bash
####set -x
tStart=`date "+%s"`
date "+%m/%d/%y"
date "+%Y%m%d"

for i in 1 2 3; do sleep 1 ; done

tEnd=`date "+%s"`
echo "Time taken to run this program is "`expr $tEnd - $tStart` "seconds!"


