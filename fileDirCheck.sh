rm t
echo $* > t
for (( i=1; i<=$#; i++ ))
do
   m=`cut -d " " -f $i t`
   if [ -s $m ]
   then
     #echo "$m:File exists"
     f=1
   else
     #echo "$m:File doesn't exist"
     f=0
   fi
   if [ $f -eq 1 ]
   then
     if [ -d $m ]
     then
       echo "$m is a directory file."
     else
       echo "$m is a file."
     fi
     l=`ls -l $m | cut -d " " -f 5`
     echo "Size of $m:$l"
   fi
   echo "---------------------"
done         
