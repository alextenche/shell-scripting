#!bin/bash
# $1 first param for function
function greet {
  echo "Hello $1 ! What a nice $2 !"
}

function numberThings {
  i=1
  for f in $@; do
    echo $i: $f
    ((i+=1))
  done
}

greet Alex morning

numberThings $(ls)
