#!/bin/bash

a="human"
case $a in
  cat) echo "feline";;
  dog|puppy) echo "canine";;
  *) echo "no match !";;
esac
