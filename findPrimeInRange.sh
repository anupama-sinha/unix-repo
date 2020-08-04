rm f3
m=$1
n=$2
while [ $m -le $n ]
do
  c=`factor $m | cut -d " " -f 2`
  if [ $c -eq $m ]
  then
    echo $m is prime >> f3
  fi
  let m=m+1
done
cat f3
echo `cat f3 | wc -l` number of primes exist
