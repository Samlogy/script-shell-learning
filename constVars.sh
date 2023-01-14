echo "Variables / constants"

declare -r NUM=5

name='sam' # can be a variable / constant
number=6

# print message
echo "hello $name !"
echo "constant $NUM"

# increment / decrement

let number+=5
let number++
let ++number

let number-=5
let number--
let --number

echo "increment $number"