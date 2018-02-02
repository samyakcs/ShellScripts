trap ' echo Values at exit a = $a b = $b' EXIT
a=5
b=15
echo " a + b is $a+$b=" `expr $a + $b`
