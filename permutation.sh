for (( i=1; i<=3; i++ ))
do
  for (( j=1; j<=3; j++ ))
  do
    for(( k=1; k<=3; k++ ))
    do
      if [ $i -ne $j -a $j -ne $k -a $i -ne $k ]
      then
        echo $i $j $k
      fi
    done
  done
done
