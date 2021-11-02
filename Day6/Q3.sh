echo -e "Enter the range m and n:"
read m n
echo "the prime no between $m And $n Are: " 

for i in $(seq $m $n)
do
    flag=0
    for j in $(seq 2 $(( $i-1 )))
     do
        ans=$(( i%j ))
        if [ $ans -eq 0 ]
         then
              flag=1
    
         fi

     done

if [ $flag -eq 0 ]
then
   echo $i
 fi
done