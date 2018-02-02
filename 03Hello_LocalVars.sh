!#/bin/bash
HELLO="Global Hello"
function hello {
                   echo $HELLO
                   local HELLO="Local World"
                   echo $HELLO
                }
echo $HELLO
hello
echo $HELLO
