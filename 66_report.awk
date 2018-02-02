BEGIN {
    title="Salary Report by awk"
    print"<html>\n<title>"title"</title><body bgcolor=\"#aabbcc\">"
    print"\n<table border=1><th  colspan=3 align=centre>Salary Report"
    print"for "v1" department</th>";
    print "<tr><td>#</td><td>EName</td><td>Salary</td>"
    totalSal=0
    count=0
}
{ 
    #if($4=="Technology") 
    if($4==v1) {
        count++
        print "<tr><td>"count"</td><td>"$2"</td><td>"$5"</td>"
        totalSal+=$5
    }
}
END {
   print "</table></body>\n";
   if(count>0)
        printf("Total %s Salary:<b>%d</b>, for %d employees, average:<b>%0.2f</b>",v1,totalSal,count,totalSal/count);
   else
       printf("<br><b>Invalid department <i>"v1"</i></b>")
   print "<br><br>Report run Date/Time:" strftime("%Y-%m-%d/%H:%M:%S")
   print "<br>Number of records processed:",NR
   print "</html>"; 

}
