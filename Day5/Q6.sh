min=0
max=0
for i in `seq 5`
do 
  number=$((RANDOM%1000))
  echo $number
  if [[ $number -ge $max ]]
   then
     max=$number
   fi
  if [[ $number -lt $min ]]
   then 
     min=$number
  fi
done
echo "max no. is: $max"
echo "min no. is: $min"
