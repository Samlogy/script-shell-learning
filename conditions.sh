#  if...then...fi
# if...then...else...fi
# if..elif..else..fi
# if..then..else..if..then..fi..fi.. (nested conditions)

# AND -a OR -o


## Example 1:
# read -p "Enter a number : " num
 	
# if ((num == 10)); then
#     echo "Your number equals 10"
# fi

# if ((num > 10)); then
#     echo "It is greater then 10"
# elif ((num < 10)); then
#     echo "It is less then 10"
# else
#     echo "It is equal to 10"
# fi

# if (( ((num % 2)) == 0 )); then
#     echo " It is even"
# fi

# # You can use logical operators like &&, || and !
# if (( ((num > 0)) && ((num < 11)) )); then
#     echo "$num is between 1 and 10"
# fi


## Example 2:
read -p "What is your name? " name
echo "Hello $name"

read -p "How old are you? " age
if [ $age -ge 19 ]
then
    echo "You can drive"

# Check another condition
elif [ $age -eq 18 ]
then
    echo "You can drive next year"
    
# Executed by default
else
    echo "You can't drive"
    
# Closes the if statement
fi
 	