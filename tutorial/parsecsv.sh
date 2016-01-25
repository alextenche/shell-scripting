#!/bin/bash
OLDIFS=$IFS; IFS=","
while read product price quantity
do
  echo -e "\e[1;33m$product =========\e[0m\n\
  Price : \t $price \t
  Quantity : \t $quantity \n"
done < $1
IFS=$OLDIFS
