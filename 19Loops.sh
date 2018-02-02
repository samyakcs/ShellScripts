#!/bin/bash
echo $0:$#:$@
if [ $# -gt 0 ]
then
    iCount=0
    echo "And the  command line argments are:"
    for i in $@
        do
           iCount=`expr $iCount + 1`
           echo $iCount":" $0: $i
        done
fi
##while:
iCount=0
while [ $iCount -lt 4 ]
do
   iCount=`expr $iCount + 1`
   echo "$0:\$iCount is:" $iCount
done
