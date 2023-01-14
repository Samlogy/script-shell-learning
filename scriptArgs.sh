# read user inputs (on script shell)

## Example 1:
echo "Enter a number 1"
read a

echo "Enter a number 2"
read b

var=$((a+b))
echo addition of number1 + number2 = $var

# # user prompt with a custom message
read -p "Enter your age " variable_name
echo your age is: $variable_name

# pass argument -> script shell (positional arguments)
echo "Passing arguments --> Script Shell"
echo "age: $1 & field: $2"

## Example 2:
read -p "Enter a number 1" a
read -p "Enter a number 2" b

var=$((a+b))
echo addition of number1 + number2 = $var

# # user prompt with a custom message
read -p "Enter your age " variable_name
echo your age is: $variable_name

# pass argument -> script shell (positional arguments)
echo "Passing arguments --> Script Shell"
echo "age: $1 & field: $2"


## Example 3:
## Read multiple values
read -p "Enter 3 Numbers to Sum : " num1 num2 num3
	
sum=$((num1+num2+num3))

echo "$num1 + $num2 + $num3 = $sum"

# Hide the input with the s code
read -sp "Enter the Secret Code " secret

if [ "$secret" == "password" ]; then
    echo "SUCCESS !"
else
    echo "Wrong Password"
fi


## Example 4:
# Print the first argument
echo "1st Argument : $1"

sum=0

# $# tells you the number of arguments
while [[ $# -gt 0 ]]; do

    # Get the first argument
    num=$1
    sum=$((sum + num))
    
    # shift moves the value of $2 into $1 until none are left
    # The value of $# decrements as well
    shift
done

echo "Sum : $sum"
	