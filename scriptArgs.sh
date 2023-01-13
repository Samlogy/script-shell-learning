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