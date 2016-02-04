#!/bin/bash

# ..2 counting by 2
for i in {1..100}
do
  echo $i
done

for (( i=1; i<=10; i++ ))
do
  echo $i
done

# loop through array
array=("dacia" "matiz" "ford")
for i in ${array[@]}
do
  echo $i
done

# loop through associative array
declare -A assocArray
assocArray["name"]="Alex"
assocArray["id"]="1234"
for i in "${!assocArray[@]}"
do
  echo "$i: ${assocArray[$i]}"
done

# command substitution
for i in $(ls)
do
  echo "$i"
done
