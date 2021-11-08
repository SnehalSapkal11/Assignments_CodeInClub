sum(){

found=0
for (( i=0;i<$2-2;i++ ))
do
      for (( j=i+1;j<$2-1;j++ ))
       do
          for (( k=j+1;k<$2;k++ ))
          do

               if (( arr[$i]+arr[$j]+arr[$k] == 0 ))
		 then
			echo "${arr[i]}"
			echo "${arr[j]}"
			echo "${arr[k]}"
			found=1
		 fi

          done

       done

done
if (( $found == 0))
then
    echo "Not exist"
fi

}

echo "Enter  numbers"
read -a arr
n=${#arr[@]}
sum $arr $n