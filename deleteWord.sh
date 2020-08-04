m=$1
`grep -v UNIX $m > file`
cat file > $m
cat $m
