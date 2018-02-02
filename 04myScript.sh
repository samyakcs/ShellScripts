#!/bin/bash
echo "1. No. of arguments:" $#
echo "2. Print all args:" $@
echo "3. Print all args - once again: " $*
echo "4. Proces ID" $$
echo "5. Return-code of last command;" $?
echo "6. Arguments: from 1 to 9:" $0 $1 $2 $3 $4 $5 $6 $7 $8 $9
echo "7. Currently set options-list:" $-
