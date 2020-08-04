echo "Enter size of array"
read n
echo "Enter array"
for (( i=1; i<=n; i++ ))
do
  read x
  a[$i]=$x
done
max1=${a[1]}
max2=0
for (( i=2; i<=n; i++ ))
do
  num=$a{[$i]}
  if [ $max1 -lt $num ]
  then
    max2=$max1
    max1=$num
  else
   if [ $max2 -lt $num ]
    then
      max2=$num
    fi
  fi
done
echo "The 2nd largest number is $max2"
