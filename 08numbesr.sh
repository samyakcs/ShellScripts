#!/bin/bash
if [ $1 -eq 0 ]
then
    Message="PID:$$:INFO: $2"
else
    Message="PID:$$:WARNING: $2"
fi
###
echo \$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$
echo $Message
echo \$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$
i3rd=$3
i4th=$4
if [ -z "$i3rd" ]
then
    echo "Hey!, you did NOT enter the 3rd argument!"
fi
###
if [ -n "$i4th" ]
then
    echo "To tell the truth, the fourth argument is:" $4
fi
