#  if...then...fi
# if...then...else...fi
# if..elif..else..fi
# if..then..else..if..then..fi..fi.. (nested conditions)

# AND -a OR -o

read a
read b
read c

if [ $a == $b -a $b == $c -a $a == $c ]
then
echo EQUILATERAL

elif [ $a == $b -o $b == $c -o $a == $c ]
then 
echo ISOSCELES
else
echo SCALENE
fi