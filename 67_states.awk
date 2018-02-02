#!/usr/bin/awk  
BEGIN{
     FS=","
     OFS="-----"
}

{
 if(NR >2){
  print $1 $2,$3
}
}
END{
   print "--------END---------"
}
