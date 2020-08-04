echo "Digital clock for Linux"
echo "To stop this clock use command kill pid,see above for pid"
echo "Press any key to continue..."
while [ 1 ]
do
  ti=`date +"%r"`
  echo -e -n "\033[7s"			#save current screen position & attributes
  #show the clock
  tput cup 0 69                         #row 0 & column 69 is used to show clock
  echo -n $ti				#put clock on screen
  echo -e -n "\033[8u"			#restore current screen position & attributes
  sleep 1				#delay for 1 sec
done
