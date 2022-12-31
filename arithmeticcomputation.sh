echo "Welcome to Sorting Arithmetic Computation program!!!"

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3
echo "The given three numbers are: $num1 $num2 $num3"

total1=$(($num1+$num2*$num3))
echo "$num1+$num2*$num3:$total1"

total2=$(($num1*$num2+$num3))
echo "$num1*$num2+$num3:$total2"

total3=$(($num3+$num1/$num2))
echo "$num3+$num1/$num2:$total3"

total4=$(($num1%$num2+$num3))
echo "$num1%$num2+$num3:$total4"

