OPC=/tmp/application.OPC.log
LOG=/tmp/application.log.`date "+%Y%m%d"`
TMPLOG=/tmp/tmp.`date "+%Y%m%d"`
#
sqlite3 $DBNAME <<END_EXEC >$TMPLOG 2>&1
   update Request_Table
   where  request_id  = "$REQUEST_ID"
     and status = "P";
END_EXEC
grep -ie "Error" $TMPLOG
if [ $? = 0 ]
then
	echo "$0:SQL ERROR in $0"
	echo "$0:SQL ERROR in $0"| tee -a $OPC >> $LOG
	exit 1
fi
