echo "Arithmetic operations"

num1=20
num2=40
addition=$(($num1 + $num2)) 

echo $addition
echo $(($num2 - $num1))
echo $(($num1 * $num2))
echo $(($num2 / $num1))
echo $(($num2 % $num1))
echo $(($num2 ** $num1))

# deciaml calculations (number of decimales after a coma)
echo "Decimale calculations"
echo "scale=3;22/7" | bc