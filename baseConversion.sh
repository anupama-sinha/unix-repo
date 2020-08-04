echo "Enter the input base:" 
read sbase 
echo "Enter the number:" 
read inum 
echo "Enter the output base:" 
read dbase 
p=`echo "ibase=$sbase ; $inum" | bc` 
q=`echo "obase=$dbase ; $p" | bc` 
echo "Destination base is $dbase and corresponding number is $q"
