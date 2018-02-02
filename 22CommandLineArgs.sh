CmdLineArgs=$@
Usage="$0 –d DISTRICT –a Agency –o Operation"
#
while getopts d:D:a:A:t:n:N:o:O: CmdLineArgs
do
    case $CmdLineArgs in
        d|D)  tmpList=$ListOfDistricts
              ListOfDistricts=`echo $tmpList " " $OPTARG`;;
        a|A)  AGENCY=$OPTARG;;
        o|O)  OPERATION=$OPTARG;;
        \? )  echo "Invalid option. Correct usage is:"
              echo $Usage
            exit 1 ;;
   esac
done
echo "Districts are:" $ListOfDistricts
echo "Agency is" $AGENCY
echo "Ops code is" $OPERATION
