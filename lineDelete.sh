m=$1 #filename
n=$2 #string
cat $m
sed '/rose/d' $m > result.txt
echo "The modified file is::"
cat result.txt
