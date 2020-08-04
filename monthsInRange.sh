m=$1 n=$2 echo $m > file1 d=`cut -d "-" -f 1 file1` b=`cut -d "-" -f 2 file1` for (( i=$a; i<=$b; i++ )) do   cal $i $n done 
