#!/bin/bash

[[ "black" == "black" ]]
echo $?

[[ "white" == "black" ]]
echo $?

# compare as strings
[[ 20 > 100 ]]
echo $?

# compare as numbers
[[ 20 -gt 100 ]]
echo $?

a=""
b="something"
[[ -z $a && -n $b ]]
echo $?
