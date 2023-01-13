# For loop --> allow you to execute statements a specific number of times.

## looping numbers
for i in {1..5} # interval of integer numbers to loop trough
do
    echo $i iteration
done

## looping strings
for X in cyan magenta yellow  # set of strings to loop through
do
	echo $X
done

# While loop --> until the condition remains true
i=1
while [[ $i -lt 10 ]] ; do  # while loop condition
   echo "$i"
  (( i += 1 )) # increment index
done