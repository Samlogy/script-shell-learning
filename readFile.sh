## the process of reading file is done line by line

LINE=1

while read -r CURRENT_LINE
	do
		echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "sample_file.txt"