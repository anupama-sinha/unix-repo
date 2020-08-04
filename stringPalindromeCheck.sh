rm ss 
rm ss1 
echo "Enter a string" 
read arr 
echo $arr > ss 
rev ss > ss1 
exec < ss1 
read line1 
if [ $line1 = $arr ] 
then 
  echo "$arr is a palindrome" 
else 
  echo "$arr is not a palindrome" 
fi
