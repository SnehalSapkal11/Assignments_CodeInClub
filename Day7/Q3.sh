read -p "Enter a number " num
echo "All Prime Factors of $num are: "
for (( i=2; i*i<=$num; i++ ))
do
     if [ $num%i == 0 ]
	then
	   number[prime]=1
	   for (( j=2; j<=i/2; j++ ))
	    do
		   if [ i % j == 0 ]
		    then
			number[prime]=0

		    fi
	    done

	if [ $prime == 1 ]
	then
		echo ${number[@]}
	fi

     fi
done

