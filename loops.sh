#1. While loop:
# num=1

# while [ $num -le 10 ]; do
#     echo $num
#     num=$((num + 1))
# done


#2. Continue and Break
# num=1
	
# while [ $num -le 20 ]; do

#   # Don't print evens
#   if (( ((num % 2)) == 0 )); then
#     num=$((num + 1))
#     continue
#   fi
  
#   # Jump out of the loop with break
#   if ((num >= 15)); then
#     break
#   fi
  
#   echo $num
#   num=$((num + 1))
# done

#3. Until loops until the loop is true
# num=1

# until [ $num -gt 10 ]; do
#   echo $num
#   num=$((num + 1))
# done

#4. Use read and a loop to output file info
# while read avg rbis hrs; do

# # printf allows you to use \n
# printf "Avg: ${avg}\nRBIs: ${rbis}\nHRs: ${hrs}\n"

# # Pipe data into the while loop
# done < sample_file.txt

#5. There are many for loop options. Here is the C form.
# for (( i=0; i <= 10; i=i+1 )); do
#   echo $i
# done
  	
#6. We can cycle through ranges  
# for i in {A..Z}; do
# echo $i
# done	