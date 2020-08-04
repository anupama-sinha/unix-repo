echo -n "Enter 1st number.." 
read a 
echo -n "Enter 2nd number.." 
read b 
echo "1.ADD" 
echo "2.SUBTRACT" 
echo "3.MULTIPLY" 
echo "4.DIVIDE" 
echo "5.EXIT" 
echo -n "Enter ur choice.." 
read ch 
while [ $ch -ne 5 ] 
do 
  case $ch in 
    1) s=`expr $a + $b`;; 
    2) if [ $a -lt $b ] 
         then  
           t=$a  
           a=$b 
           b=$t 
       fi 
       s=`expr $a - $b`;; 
    3) s=`expr $a \* $b`;; 
    4) s=`expr $a / $b`;; 
    *) echo "Wrong choice"  
   esac 
   echo "Result is=$s" 
   echo "1.ADD" 
   echo "2.SUBTRACT"     
   echo "3.MULTIPLY" 
   echo "4.DIVIDE" 
   echo -n "Enter ur choice.." 
   read ch       
   done
