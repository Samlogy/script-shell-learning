# gt: greater than
# ge: Greater than equal to

# lt: less than
# le: less than equal to

# eq: equal to
# ne: Not Equal to

read -p "Enter x " x
read -p "Enter y " y

if [ $x -gt $y ]
then
echo X is greater than Y

elif [ $x -lt $y ]
then
echo X is less than Y

elif [ $x -eq $y ]
then
echo X is equal to Y

elif [ $x -ne $y ]
then
echo X is not equal to Y
fi