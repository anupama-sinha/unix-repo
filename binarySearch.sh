echo Enter how many numbers to enter.. 
read n 
echo Enter numbers... 
for (( i=1; i<=$n; i++ )) 
do 
  read m 
  a[$i]=m 
done 
low=1 
up=$n 
echo Enter key.. 
read key 
for (( i=$low; i<=$up; i++ )) 
do 
  m=`expr $low + $up` 
  m=`expr $m / 2` 
  if [ $key -lt ${a[$i]} ] 
  then 
    low=`expr $i + 1` 
  else 
    up=`expr $i - 1` 
  fi 
  if [ $key -eq ${a[$i]} ] 
  then 
    echo found 
    i=$up 
  fi 
done 
let up=up+1 
if [ $i -eq $up ] 
then 
  echo Not found 
fi
