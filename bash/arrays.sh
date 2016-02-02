#!bin/bash
a=()
b=("apple" "banana" "cherry")
# print elem from pos 2 - cherry
echo ${b[2]}

b[5]="kiwi"
b+=("mango")

# print all elems of array
echo ${b[@]}

# print last elem from array
echo ${b[@] : -1}

# assoc arrays
declare -A myarray
myarray[color]=green
myarray["city"]="Timisoara"
echo ${myarray["city"]} is ${myarray[color]}
