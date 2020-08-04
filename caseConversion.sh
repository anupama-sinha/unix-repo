m=$1
echo "The original file is::"
cat $m
rm f
exec < $m
while read line
do
  `echo $line | tr '[a-z]' '[A-Z]' >> f`
done
echo "The converted file is::"
cat f
