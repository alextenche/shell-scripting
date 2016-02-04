#!/bin/bash

# normal
echo "What is your age ?"
read age

# secret
echo "Enter your password"
read -s pass

# inline
read -p "What's your favorite car ?" car

echo age: $age, pass: $pass, favorite car: $car

# select from a list
select option in "dacia" "matiz" "ford"
do
  case $option in
    dacia) echo "My first car !";;
    matiz) echo "Second car, pretty good !";;
    ford) echo "Current and best car :)";;
    quit) break;;
    *) echo "huh ?";;
  esac
done
