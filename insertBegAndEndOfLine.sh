m=$1
sed 's/^/&<</' $m > file
sed 's/^.*/&>>/' file
