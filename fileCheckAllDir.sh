m=$1
find /home -name $m
if [ $? -ne 0 ]
then
  echo "Exists"
else
  touch cal.sh
  echo "$m has been created in the current working directory" 
fi
