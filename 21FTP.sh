#!/bin/sh
# Usage:
# 07ExampleFTP.sh machine file
# set -x
SOURCE=$1
FILE=$2
GETHOST="uname -n"
BFILE=`basename $FILE`
ftp -n $SOURCE <<EndFTP
    ascii
    user anonymous $USER@`$GETHOST`
    get $FILE /tmp/$BFILE
EndFTP
