#Define global variables
declare -a A
declare -i Pvt
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

Partition()
{
#Partition Function
# i,j,k are working indices
#Step 1: initialize
declare -i L=$1 
declare -i U=$2
declare -i P Q Drn T
P=$L
Q=$U
Drn=0
Pvt=$P
#Step 2: perfom partition
while [ $P -lt $Q ]
do
if [ $Drn -eq 0 ]
then
if [ ${A[$P]} -le ${A[$Q]} ]
then
Q=`expr $Q - 1` 
else
T=${A[$P]}
A[$P]=${A[$Q]}
A[$Q]=$T
Pvt=$Q
P=`expr $P + 1`
Drn=1
fi
else
if [ ${A[$P]} -le ${A[$Q]} ]
then
P=`expr $P + 1` 
else
T=${A[$P]}
A[$P]=${A[$Q]}
A[$Q]=$T
Pvt=$P
Q=`expr $Q - 1`
Drn=0
fi
fi
done
}

QuickSort()
{
#recursive Quick Sort
declare -i L=$1
declare -i U=$2 L1 U1
if [ $L -lt $U ]
then
Partition $L $U
U1=`expr $Pvt - 1`
QuickSort $L $U1
L1=`expr $Pvt + 1`
QuickSort $L1 $U
else
return
fi
}


#main for Quick Sort
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
#call quick sort
QuickSort 1 $n
#Show sorted list
echo -e "\nSorted List:\c"
WriteList $n
echo
echo "End"
