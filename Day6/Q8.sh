flips=1
heads=0
tails=0


while [ $flips -le 11 ]
do
   Result=$((RANDOM%2))
  flips = $(( flips+1 ))
  if [[ ${Result} -eq 0 ]]
   then
   echo "HEADS"
   head = $(( heads+1 ))
elif [[ ${Result} -eq 1 ]]
 then
     echo "TAILS"
     tails =$(( heads+1 ))	
fi
done

echo "You Got $heads HEADS And $tails TAILS"