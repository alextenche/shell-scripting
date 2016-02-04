#!/bin/bash
a="String example for regex"
if [[ $a =~ [0-9]+ ]]; then
  echo "There are numbers in the string: $a"
else
  echo "There are no numbers in the string: $a"
fi
