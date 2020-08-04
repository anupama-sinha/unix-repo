echo "Enter name of the file..."
read file
exec < $file
rm file1
echo -ne "" > file1
while read line
do
  set $line
  for i in $*
  do
    echo $i >> file1
  done
done
rm file2
exec < file1
echo -ne "" > file2
while read line
do
  c=`expr "$line" : '.*'`
  echo -e "L$c \t $line" >> file2
done
sort file2 | uniq -c > file1
echo "Frequency---WordLength---Word"
cat file1
