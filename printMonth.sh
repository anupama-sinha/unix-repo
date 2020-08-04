m=$1
n="c"
if [ "$m" = "$n" ]
then
  echo "The current month & year is"
  cal
else
  y=`date | cut -d " " -f 7`
  cal $m $y
fi
