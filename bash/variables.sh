#!/bin/bash

a=Hello
b="Good Morning"
c=16

echo $a
echo $b
echo $c

echo "$b! I have $c apples."

# d is an integer
declare -i d=123

# e is read-only
declare -r e=456

# f is lolcats
declare -l f="LOLCats"

# g is LOLCATS
declare -u g="LOLCats"

# home directory
echo $HOME

# current directory
echo $PWD

# machine type
echo $MACHTYPE

echo $HOSTNAME
echo $BASH_VERSION
echo $SECONDS

# name of script
echo $0
