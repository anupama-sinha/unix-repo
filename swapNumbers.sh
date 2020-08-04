echo "Enter 2 numbers"
read a b
a=`expr $a \* $b`
b=`expr $a / $b`
a=`expr $a / $b`
echo -e "a=$a\nb=$b"
