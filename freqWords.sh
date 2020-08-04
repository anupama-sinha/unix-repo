echo "Enter name of the file..."
read file
rm file2
exec < $file
while read line
do
  set $line
  for i in $*
  do
    echo $i >> file2
  done
done
sort file2 | uniq -c > file1
echo "Repeated Words"
echo " Word-----Frequency"
grep -v -w "1" file1
if [ $? -ne 0 ]
then
  echo " No repeated words"
else
  echo "Repeated Words exists"
fi
