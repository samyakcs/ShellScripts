#!/bin/bash
##################################################################
# 18Functions.sh: Shell script program, to:
#                 1. Show usage of functions in shell-script
#                 2. Show how to call another shell-script
# Input parametres:
# 1. Process-flag: Y or NOT-Y
# 2. File-name   : Should be an existing file
##################################################################

##################################################################
# Functions             Description
###########             ############
# CheckFile             - Checks file existance and accessiblity
# ProcessUsersFile      - Process files, main business logic:
#                         1.xxxxxxxxxxxx
#                         2.xxxxxxxxxxxx
# CallNextScript        - Executes another script to xxxxxxxxxxxxxxx
##################################################################
export PATH=$PATH:`pwd`
if [ $# -ne 2 ]
then
   echo "Invalid number of arguments - $#"
   echo "Usage:"
   echo "$0 PROCESS_FLAG FILE_NAME"
   echo "where:"
   echo "       PROCESS_FLAG - Y or N"
   echo "       FILE_NAME - name of file to be processed"
   exit 1
fi

CheckFile()
###############
# Check  File presence and read/write attributes
# Note that $1 is the the first argument for the FUNCTION
#########################################################
{
   if [ -f $1 ]
   then
      echo "File $1  exists"
  else
      echo "File $1 does not exist"
      return 1
   fi

   if [ -r $1 ]
   then
     echo "User $USER can read file $1"
   else
      echo "File $1 is not accessible"
      return 1
   fi
}

ProcessUsersFile()
###############
# Process file
#################################################
{
   echo "$0------<<< for loop output >>>-----"
   for i in `cat $1` ; do echo ---::: $i; done
#
   echo "$0------<<< while loop output >>>-----"
   cat $1 | while read i; do echo $0---::: $i; done
}
#
CallNextScript()
###############
#
#################################################
{
  echo $0 is calling next script now!
  19Loops.sh a b c d
#
  echo $0 is calling function from another script now!
  source 20Functions.sh
  CountTill3 e f g h
}
#
CheckFile $2                    ##### Notice $2 here...it would be $1 in the CheckFile


if [ $? -eq 0 -a   $1 ==  "Y" ]
then
   ProcessUsersFile  $2
   CallNextScript
else
   echo "---------------ERROR-------------------"
   echo " $0 ended with error"
   echo "---------------ERROR-------------------"
   exit 1
fi

##SuccessfulExit:
echo "$0 - SUCCESSFULLY ENDED"
exit 0
