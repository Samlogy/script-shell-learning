# Strings

rand_str="A random string"

# Get string length
echo "String Length : ${#rand_str}"

# Get string slice starting at index (0 index).
echo "${rand_str:2}"

# Get string slice starting from 2 ending at 7.
echo "${rand_str:2:7}"

# Return whats left after A
echo "${rand_str#*A }"