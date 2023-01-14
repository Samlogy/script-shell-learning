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
# read -p "What is your name? " name
# echo "Hello $name"

# read -p "How old are you? " age
# if [ $age -ge 19 ]
# then
#     echo "You can drive"

# # Check another condition
# elif [ $age -eq 18 ]
# then
#     echo "You can drive next year"
    
# # Executed by default
# else
#     echo "You can't drive"
    
# # Closes the if statement
# fi
 	

## Example 3: (testing on strings)
str1=""
str2="Sad"
str3="Happy"

## Test if a string is null
if [ "$str1" ]; then
    echo "$str1 is not null"
fi

if [ -z "$str1" ]; then
    echo "str1 has no value"
fi

## Check for equality
if [ "$str2" == "$str3" ]; then
    echo "$str2 equals $str3"
elif [ "$str2" != "$str3" ]; then
    echo "$str2 is not equal to $str3"
fi

if [ "$str2" > "$str3" ]; then
    echo "$str2 is greater then $str3" # the letter s comes after h --> so its greater
elif [ "$str2" < "$str3" ]; then
    echo "$str2 is less then $str3"
fi

## With extended test [[ ]] you can use Regular Expressions
read -p "Validate Date : " date
	
pat="^[0-9]{8}$"

if [[ $date =~ $pat ]]; then
    echo "$date is valid"
else
    echo "$date is not valid"
fi



## Example 4:
#  Use case to when it makes more sense then if
## works like a switch handles multiples cases + a default statement
	
read -p "How old are you : " age

# Check the value of age
case $age in

# Match numbers 0 - 4
[0-4]) 
    echo "Too young for school"
    ;; # Stop checking further
    
# Match only 5
5)
    echo "Go to kindergarten"
    ;;
    
# Check 6 - 18
[6-9]|1[0-8])
    grade=$((age-5))
    echo "Go to grade $grade"
    ;;
    
# Default action
*)
    echo "You are too old for school"
    ;;
esac # End case


## Example 5:
# Ternary Operator performs different actions based on a condition
can_vote=0
age=18

((age>=18?(can_vote=1):(can_vote=0)))
echo "Can Vote : $can_vote"