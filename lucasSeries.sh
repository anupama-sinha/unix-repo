#Lucas sequence echo "Enter how many numbers to print" read n a=1 b=3 echo The lucas series is.... echo $a echo $b for (( i=3; i<=$n; i++ )) do   t=`expr $a + $b`   echo $t   a=$b   b=$t done 
