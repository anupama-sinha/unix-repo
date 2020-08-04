clear
cat $1
echo “----------------------------------------“
exec < $1
rm file1
rm file2
echo –ne “ “ > file1
while read line
do
  set $line
  for I in $*
  do
    grep –w $i file1 > file2
    if [ $? –ne 0 ];then
      echo $i 1 >> file1
    else
      c=`cut –d “ “ –f 2 file2`
      grep –v –w $i file1 > file2
      let c=c+1
      echo $i $c >> file2
      mv file2 file1
    fi
  done
done
echo Frequency of words are::
cat file1
