#!/bin/bash
echo "Length of $USER is `expr length $USER` "
echo "Length of $USER is ${#USER} "
echo "Substring(3,2) for $USER  is `expr substr $USER 3 2`"
echo `expr index $USER er`
echo `expr index $USER e`
echo "C U T Examples ahead..."
cut -c 4-10 myFile.txt
cut -d, -f 3- myFile.txt

