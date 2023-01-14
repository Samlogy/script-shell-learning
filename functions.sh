# Function

getDate() {
    date
    return
}
getDate

# local vs glocal
name="sam" # global variable

demoLocal() {
    local name="aissam" # local variable
    return
}

demoLocal
echo "$name"

sum() {
    local nbr1=$1
    local nbr2=$2

    local sum=$((nbr1+nbr2))
    echo $sum
    return
}

result=$(sum 1 2)
echo $result