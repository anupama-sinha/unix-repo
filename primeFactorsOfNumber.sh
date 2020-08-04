echo "Enter number..."
read n
line=`factor $n | cut -d " " -f 2-`
set $line
for i in $*
do
  echo $i >> file1
done
sort file1 | uniq > file2
cat file2
