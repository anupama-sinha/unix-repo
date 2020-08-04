#Define global variables
declare -a A
declare -i Pvt
declare -i BP=1000
declare -i SP=$BP
declare -a LStack RStack
declare -i L R OF=0 UF=0

IsFull()
{
if [ $SP -eq 1 ]
then
OF=1
else
OF=0
fi
return
}

IsEmpty()
{
if [ $SP -eq $BP ]
then
UF=1
else
UF=0
fi
return
}

Push()
{
IsFull
if [ $OF -eq 1 ]
then
echo "Error:Stack Overflow"
return
fi
let "SP-=1"
LStack[$SP]=$1
RStack[$SP]=$2
return
}

Pop()
{
IsEmpty
if [ $UF -eq 1 ]
then
echo "Error:Stack Underflow"
return
fi
L=${LStack[$SP]}
R=${RStack[$SP]}
let "SP+=1"
return
}

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
declare -i PL=$1 
declare -i PU=$2
declare -i P Q Drn T
P=$PL
Q=$PU
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

DispStack()
{
declare -i i=$SP
while [ $i -lt $BP ]
do
echo "L=${LStack[$i]} R=${RStack[$i]}"
i=`expr $i + 1`
done
return
}

QuickSort()
{
#Non-Recursive Quick Sort
declare -i Low=$1
declare -i Up=$2 L1 U1
if [ $Low -lt $Up ]
then
Push $Low $Up
IsEmpty
while [ $UF -eq 0 ]
do
#DispStack
Pop 
Low=$L
Up=$R
Partition $Low $Up
U1=`expr $Pvt - 1`
if [ $Low -lt $U1 ]
then
Push $Low $U1
fi
L1=`expr $Pvt + 1`
if [ $L1 -lt $Up ]
then
Push $L1 $Up
fi
IsEmpty
done
fi
}

#main for Non-Recursive Quick Sort
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
