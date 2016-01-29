#!/bin/bash

d=2
e=$((d+2))
echo $e

((e++))
echo $e

((e--))
echo $e

((e+=5))
echo $e

((e*=3))
echo $e

echo
f=$((1/3))
echo $f
g=$(echo 1/3 | bc -l)
echo $g
