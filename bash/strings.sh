#!/bin/bash

a="hello"
b="world"
#concatenate
c=$a$b
echo $c

# length
echo ${#a}
echo ${#c}

#substing
d=${c:3}
echo $d
e=${c:3:4}
echo $e
echo ${c: -4}
echo ${c: -4:3}

#replace in string
cars="dacia ford ford matiz dodge"
echo ${cars/dacia/bmw}
echo ${cars//ford/audi}

# # -replace only if dacia at the begining of string
echo ${cars/#dacia/mercedes}

# % -replace only if dodge at the end of string
echo ${cars/%dodge/mercedes}

# matching
echo ${cars/f*/jaguar}
