#!/bin/bash

if [ $# -lt 3 ]; then
  cat <<- EOM
  three arguments are required:
  username, userid and favorite number.
EOM
else
  echo "Username: $1"
  echo "UserID: $2"
  echo "Favorite Number: $3"
fi

# promts for an answer if none is given
read -p "favorite car ?" a
while [[ -z "$a" ]]; do
  read -p "please enter an answer " a
done
echo "$a was the answer"

# assume an answer if none is given
read -p "favorite car ?" a
while [[ -z "$a" ]]; do
  a="dacia"

done
echo "$a was the answer"

# basic validation with regex
read -p "enter a year: [nnnn]" a
while [[ ! $a =~ [0-9]{4} ]]; do
  read -p "a year please ! [nnnn] " a
done
echo "$a was the year"
