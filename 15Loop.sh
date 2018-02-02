#!/bin/bash
Tables=`mysql  -utestUser --password=somePassword --silent -D employees -t << END_SQL | sed -e 's/|//g' -e's/-//g' -e 's/+//g' -e 's/Tables_in_employees//' -e 's/ //g' -e '/^$/'d 
show tables;
END_SQL`

echo $Tables

for eachTable in $Tables 
do
    mysql  -utestUser --password=somePassword --silent -D employees -t<<END_SQL
  	desc $eachTable;
	select count(*) from $eachTable;
END_SQL
done
