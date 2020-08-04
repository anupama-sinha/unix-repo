#Define global variables
declare -a A
declare -a T
#read list function
ReadList()
{
if [ $n -le 0 ]
then
echo "Invalid size"
return
else
echo "Enter input list of size $n:" 
i=1
while [ $i -le $n ]
do
read A[$i]
i=`expr $i + 1`
done
return
fi
}

WriteList()
{
if [ $n -le 0 ]
then
echo "Invalid size"
return
else
i=1
while [ $i -le $n ]
do
echo -e "${A[$i]} \c"
i=`expr $i + 1`
done
return
fi
}

Merge()
{
#merge Function
# T[] is a working array
# i,j,k are working indices
#Step 1: initialize
declare -i L1=$1 
declare -i H1=$2
declare -i L2=$3
declare -i H2=$4
declare -i i
declare -i j k=1
i=$L1
j=$L2
#Step 2: perfom merge
while [ $i -le $H1 -a $j -le $H2 ]
do
if [ ${A[$i]} -le ${A[$j]} ]
then
T[$k]=${A[$i]}
i=`expr $i + 1` 
else
T[$k]=${A[$j]}
j=`expr $j + 1`
fi
k=`expr $k + 1`
done

#Step 3: Copy unmerge part of first half if exists
while [ $i -le $H1 ]
do
T[$k]=${A[$i]}
k=`expr $k + 1`
i=`expr $i + 1`
done
#Step 4: Copy unmerge part of second half if exists
while [ $j -le $H2 ]
do
T[$k]=${A[$j]}
k=`expr $k + 1`
j=`expr $j + 1`
done
#Step 5: Copy into the original list from working list
i=$L1
k=1
while [ $i -le $H2 ]
do
A[$i]=${T[$k]}
k=`expr $k + 1`
i=`expr $i + 1`
done
}

MergeSort()
{
#recursive merge sort
declare -i L=$1
declare -i H=$2
declare -i Mid Mid1 L1 L2 H1 H2
if [ $L -lt $H ]
then
Mid=`expr $L + $H`
Mid=`expr $Mid / 2`
#echo "L=$L H=$H Mid=$Mid" 
MergeSort $L $Mid
Mid1=`expr $Mid + 1`
MergeSort $Mid1 $H
L1=$L
L2=`expr $Mid + 1`
H1=$Mid
H2=$H
Merge $L1 $H1 $L2 $H2
fi
}


#main
tput clear
#tput cup 10 10
#read the size of the list
echo -e "Enter n:\c"
read n
#read the list
ReadList $n
#Show Unsorted list
echo -e "\nUnsorted List:\c"
WriteList $n
#call merge sort
MergeSort 1 $n
#Show sorted list
echo -e "\nSorted List:\c"
WriteList $n
echo
echo "End"
