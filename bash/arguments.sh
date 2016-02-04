#!/bin/bash

# first argument provided to script
echo $1

for i in $@
do
  echo $i
done

echo "$# arguments detected :)"
