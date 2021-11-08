echo "Enter the two number"
read n
read n1
function pal()
{
number=$n
number1=$n1
reverse=0
local s=$1
for i in $s
do

while [ $i -gt 0 ]
do
a=`expr $i % 10 `
n=`expr $i / 10 `
reverse=`expr $reverse \* 10 + $a`
done

done
if [[ $number -eq $reverse && $number1 -eq $reverse ]]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi


}
r=`pal $n $n1`
echo "$r"
