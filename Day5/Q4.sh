add=0
avg=0
for i in `seq 5`
do 
  number=$((RANDOM%100))
  echo $number
  add=$((add+number))
  
done
avg=$((add/5))
echo "Addition of 5 2digit Random No is:" $add
echo "Aerage of this Random No:" $avg