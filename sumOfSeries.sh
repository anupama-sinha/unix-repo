echo "Enter number range..."
read n
sum=0
for (( i=1; i<=n; i++ ))
do
  num=1
  denom=1
  for (( j=1; j<=i; j++ ))
  do
    denom=`expr "scale=6; $denom * $i" | bc`
    num=`expr "scale=6; $num * $j" | bc`
  done
  num2=`expr "scale=6; $num / $denom" | bc`
  sum=`expr "scale=6; $sum + $num2" | bc`
done
echo "The sum is $sum"
