read -p "Enter a Number " num
pow=1
for (( i=0; i<=$num; i++ ))
do
   echo  $i " " $pow
   pow = $(( 2**pow ))
   
done