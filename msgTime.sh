temp=` date | cut -c 12-13`
dat=` date +"%A %d in %B of %Y(%r)"`
if [ $temp -lt 12 ]
then
  msg="Good Morning $LOGNAME, Have a nice day!"
fi
if [ $temp -gt 12 -a $temp -le 16 ]
then
  msg="Good Afternoon $LOGNAME"
fi
if [ $temp -gt 16 -a $temp -le 18 ]
then 
  msg="Good Evening $LOGNAME"
fi
if which dialog > /dev/null
then
  dialog --backtitle "Anupama" \
         --title "(-:Welcome Anupama:-)" \
         --infobox "\n $msg \n This is $dat" 6 60
  echo -n "                           Press any key to continue                                 "
  read 
  clear
else
  echo -e "$msg \n This is $dat"
fi 
