#!/bin/bash
i=1

while [ 1 -eq 1 ]
do
    echo  "[$i]. Network check at `date`"
    i=`expr $i + 1`
    ping -c 1 google.com
    sleep 2
done
