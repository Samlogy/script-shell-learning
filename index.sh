#! /usr/bin/bash

# variable / constants
# arithmetic operations
# script arguments
# Numeric Comparison logical operators + Conditions
# Conditional Statements (Decision Making)
# Loops
# redaing a file content
# How to execute commands with back ticks
# functions
# execute commands
# Use case to when it makes more sense then if (SWITCH)
# Ternary Operator performs different actions based on a condition
# Strings (work with strings)
# Arrays & basic operations
# Positional Parameters

# How to get arguments for scripts from the command line
## It is possible to give arguments to the script on execution.
## $@ represents the position of the parameters, starting from one.

# for x in $@
# do
#     echo "Entered arg is $x"
# done

# How to Automate Scripts by Scheduling via cron Jobs
## Cron is a job scheduling utility present in Unix like systems. You can schedule jobs to execute daily, weekly, monthly or in a specific time of the day. Automation in Linux heavily relies on cron jobs.

# How to Check Existing Scripts in a System 
## crontab
## command find



# You can set what separates the values with IFS


# Store the original value of IFS
OIFS="$IFS"

# Set what separates the input values
IFS=","

read -p "Enter 2 numbers to add separated by a comma: " num1 num2

# Use the parameter expansion ${} to substitute any whitespace
# with nothing
num1=${num1//[[:blank:]]/}
num2=${num2//[[:blank:]]/}

sum=$((num1+num2))

echo "$num1 + $num2 = $sum"

# Reset IFS to the original value
IFS="$OIFS"

# Parameter expansion allows you to do this
name="Sam"
echo "${name}'s Toy"

# The search and replace allows this
samp_string="The dog climbed the tree"
echo "${samp_string//dog/cat}"

# You can assign a default value if it doesn't exist
echo "I am ${name:-Derek}"

# This uses the default if it doesn't exist and assigns the value
# to the variable
echo "I am ${name:=Derek}"
echo $name
