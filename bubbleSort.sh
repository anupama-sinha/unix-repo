echo "Enter number of elements to be entered" 
read n 
for (( i=1; i<=n; i++ )) 
do 
  read x 
  a[$i]=$x 
done 
for (( i=1; i<=n; i++ )) 
do 
  for (( j=1; j<=n-i; j++ )) 
  do 
     k=`expr $j + 1` 
     if [ ${a[$j]} -gt ${a[$k]} ] 
     then 
        temp=${a[$j]} 
        a[$j]=${a[$k]} 
        a[$k]=$temp 
     fi 
  done 
done 
echo Sorted Array is...... 
for (( i=1; i<=n; i++ )) 
do 
  echo ${a[$i]} 
done 
