#!/bin/bash

d=$(pwd)
echo $d

a=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
echo "The ping was $a"
