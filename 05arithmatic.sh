#!/bin/bash
expr 1 + 3
echo "Line 2:" expr 1 + 3
echo "Line 3:" `expr 1 + 3`
x=1
echo "x is $x"
echo "Now, please enter y:"; read y
echo "You entered y as $y"
z=`expr $x + $y`
echo  "z is:" $z


