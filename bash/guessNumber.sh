#!/bin/bash
rand=$RANDOM
secret=${rand:0:1}

function game {
  read -p "guess the number !" guess
  while [[ $guess != $secret ]]; do
    read -p "nope, try again! " guess
  done
  echo "congrat, $secret was the number !"
}

function genreate {
  echo "a random number is: $rand "
  echo -e "hint: type game for a fun diversion!"
}

if [[ $1 =~ game|Game|GAME ]]; then
  game
else
  genreate
fi
