echo "Enter number of elements to enter in 1st list..."
read n1
echo "Enter numbers..."
for (( i=1; i<=n1; i++ ))
do
  read a[$i]
done
echo "Enter number of elements to enter in 2nd list..."
read n2
for (( i=1; i<=n2; i++ ))
do
  read b[$i]
done
i=1
j=1
k=1
while [ $i -le $n1 -a $j -le $n2 ]
do
  if [ ${a[$i]} -lt ${b[$j]} ]
  then
    c[$k]=${a[$i]}
    i=`expr $i + 1`
  else
    c[$k]=${b[$j]}
    j=`expr $j + 1`
  fi
  k=`expr $k + 1`
done
if [ $i -le $n1 ]
then
  c[$k]=${a[$i]}
  i=`expr $i + 1`
  k=`expr $k + 1`
fi
if [ $j -le $n2 ]
then
  c[$k]=${b[$j]}
  j=`expr $j + 1`
  k=`expr $k + 1`
fi
n=$k
echo "The merged sorted list is::"
for (( i=1; i<=n; i++ ))
do
  echo ${c[$i]}
done
