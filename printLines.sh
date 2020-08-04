#print a text file from line number m to line number n
#command line:=>filename origin_line dest_line
f=$1
m=$2
n=$3
clear
echo "The original file is::"
cat $f
diff=`expr $n - $m + 1`
`cat $f | head -$n | tail -$diff > f`
echo "The particular lines are::"
cat f
