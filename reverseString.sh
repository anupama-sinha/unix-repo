#reverse string supplIed as command line argument
for i in $*
{
  touch file2
  echo $i > file1
  noc=`expr "$i" : '.*'`
  for (( j=1; j<=noc; j++ ))
  do
    d=`expr $noc - $j + 1`
    c=`cut -c  $d file1`
    echo -n "$c" >> file2
  done
  echo -e `cat file2`
  rm  file2
