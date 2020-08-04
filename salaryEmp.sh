echo "Enter Basic pay of an employee...."
read basic
da=`expr "scale=6; $basic * 0.5" | bc`
hra=`expr "scale=6; $basic * 0.3" | bc`
medical=100
gross=`expr "scale=6; $basic + $da + $hra + $medical" | bc`
ptax=200
net=`expr "scale=6; $gross - $ptax" | bc`
echo "The salary of an employee is $net"
