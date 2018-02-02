#!/bin/bash
if [ $# -ne 2 ]                                                                 
then                                                                            
   echo "Invalid number of arguments - $#"                                      
   echo "Usage:"                                                                
   echo "$0 SERVICE_NAME EMAILID"                                             
   echo "where:"                                                                                                              
   echo "       SERVICE_NAME - Name of service, e.g. ssh"
   echo "       EMAIL_ID -     Email of user to be notified" 
   exit 1                                                                       
fi   
##
SERVICE=$1
EMAIL_ID=$2

if [ "`systemctl is-active $SERVICE`" != "active" ] 
then 
    echo "`date`: $SERVICE  is not running - trying to restart"
    systemctl restart $SERVICE
    echo "`date`: Mailing $EMAIL_ID with current status of $SERVICE"
    systemctl status $SERVICE | mail -s "$SERVICE was restarted" $EMAIL_ID
else
    echo "`date`: $SERVICE is already up - no restart needed"
fi 
exit 0
