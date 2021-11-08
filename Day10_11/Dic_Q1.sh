echo " Day 10 Prob 01 "

echo "Enter value of a :"
read a

echo "Enter value of b :"
read b

echo "Enter value of c :"
read c

declare -A diction


function arithmeticFunction() {
	result=$(( a + b * c))
	diction[1]=$result
	result=$(( a * b + c))
	diction[2]=$result
	result=$(( c + a / b))
	diction[3]=$result
	result=$(( a % b + c))
	diction[4]=$result
	echo "${diction[*]}"
	
} 

arithmeticFunction
declare -a array
for key in "${diction[*]}"; 
	do 
		array=($key)
	done


echo "
Elements in array : ${array[*]}"
n=${#array[*]}

echo "Sorting $n elements"
    for ((i=0; i <= $n; i++))
    do

        for ((j=((i + 1)); j <= $n; j++))
        do

            if [[ ${array[i]} -gt ${array[j]} ]]
            then
                 
                tmp=${array[i]}
                array[i]=${array[j]}
                array[j]=$tmp         
            fi
        done
    done

echo "Array in Ascending order : ${array[*]} "

for ((i=0; i <= $n; i++))
    do

        for ((j=((i + 1)); j <= $n; j++))
        do

            if [[ ${array[i]} -lt ${array[j]} ]]
            then
                 
                tmp=${array[i]}
                array[i]=${array[j]}
                array[j]=$tmp         
            fi
        done
    done


echo "Array in Descending order : ${array[*]} "