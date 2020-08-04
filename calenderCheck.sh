`sh calcheck.sh 3 2010 
y=$1 
m=$2 
e=`expr $y % 2` 
o=`expr $m % 2` 
if [ $e -eq 0 -a $o -eq 1 ]  
then 
  cal $m $y 
else 
  if [ $e -eq 1 ] 
  then 
    echo "Year is not even" 
  fi 
  if [ $o -eq 0 ] 
  then 
    echo "Month is not odd" 
  fi 
fi 
