function palindromeNo(){

number=$1
while [ $1 -gt 0 ]
do
a= $(( $number % 10 ))
rev=$( echo ${rev}${a} ) 
r=$(( $1 / 10 ))
done
echo $reverse
if [ $number -eq $reverse ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
}

function primeNo(){
while [ $temp -le $1/2 ]
do
  ans=$(( $1%i ))
  if [ $ans -eq 0 ]
  then
    echo "$1 is not a prime number."
  else
    echo "$1 is a prime number."
  fi
done

palindromeNo $1
}

echo -e "Enter Number : \c"
read n

primeNo $n

