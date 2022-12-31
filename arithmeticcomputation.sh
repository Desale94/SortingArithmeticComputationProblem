echo "Welcome to Sorting Arithmetic Computation program!!!"

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3
echo "The given three numbers:$num1 $num2 $num3"

total1=$(($num1+$num2*$num3))
echo "$num1+$num2*$num3:$total1"

total2=$(($num1*$num2+$num3))
echo "$num1*$num2+$num3:$total2"

total3=$(($num3+$num1/$num2))
echo "$num3+$num1/$num2:$total3"

total4=$(($num1%$num2+$num3))
echo "$num1%$num2+$num3:$total4"

declare -A dictionary
declare -a array
dictionary[total1]=$total1
dictionary[total2]=$total2
dictionary[total3]=$total3
dictionary[total4]=$total4
index=0
for computation in ${!dictionary[@]}
do 
    array[index++]=${dictionary[$computation]}
done
echo "The computation results array is"
echo ${array[@]}

array=($(printf '%d\n' "${array[@]}"|sort -nr))
echo "The sorted array is:${array[@]}"

array=($(printf '%d\n' "${array[@]}"|sort -n))
echo "The sorted array is:${array[@]}"
