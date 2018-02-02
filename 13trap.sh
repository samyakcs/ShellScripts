#!/bin/bash
trap 'echo "Contro-C disabled" - please wait for `expr 5 - $i` seconds ' 2
for i in 1 2 3 4 5
do
    echo $i
    sleep 1
done

