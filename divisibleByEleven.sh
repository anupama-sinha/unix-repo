f=`expr $c % 2` 
if [ $f -eq 1 ] 
then 
   if [ $evensum -gt $oddsum ] 
    then 
      diff=`expr $evensum - $oddsum` 
      if [ $diff -gt 9 ] 
      then 
        n=`expr $n \* 100 + 9` 
        diff1=`expr $diff - 9` 
        n=`expr $n \* 100 + $diff1` 
      else 
        n=`expr $n \* 100 + $diff` 
      fi 
    else 
        diff=`expr $oddsum - $evensum` 
        if [ $diff -gt 9 ] 
        then 
          n=`expr $n \* 10 + 9` 
          diff1=`expr $diff - 9` 
          n=`expr $n \* 100 + $diff1` 
        else 
          n=`expr $n \* 10 + $diff` 
        fi 
    fi 
else 
    if [ $evensum -gt $oddsum ] 
    then 
        diff=`expr $evensum - $oddsum` 
        if [ $diff -gt 9 ] 
        then 
          n=`expr $n \* 10 + 9` 
          diff1=`expr $diff - 9` 
          n=`expr $n \* 100 + $diff1` 
        else 
          n=`expr $n \* 10 + $diff` 
       else 
          n=`expr $n \* 10 + $diff` 
        fi 
    else 
        diff=`expr $oddsum - $evensum` 
        if [ $diff -gt 9 ] 
        then 
          n=`expr $n \* 100 + 9` 
          diff1=`expr $diff -9` 
          n=`expr $n \* 100 + $diff1` 
        else 
          n=`expr $n \* 100 + $diff` 
        fi 
   fi 
fi 
echo $n
