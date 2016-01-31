#!/bin/bash
OLDIFS=$IFS; IFS=","
while read product price quantity
do
  echo -e "\e[1;33m$product =========\e[0m\n\
  Price : \t $price \t
  Quantity : \t $quantity \n"
done < $1
IFS=$OLDIFS

# ./parsecsv.sh tools.txt | grep -A2 hammer
# display individual catalog entries
# -A2 display 2 lines after the search term
# -B2 before 2 lines
# -C2 context
