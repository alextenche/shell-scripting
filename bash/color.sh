#!bin/bash

echo -e "\033[34;42mColor Text\33[0m"

echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong !\33[0m"

flashred="\033[5;31;40m"
red="\033[31;40m"
none="\033[0m"
echo -e $flashred"ERROR: "$none$red"Something went wrong !"$none

flashred=$(tput setab 0; tput setaf 1; tput blink)
red=$(tput setab0; tput setaf 1)
none=$(tput sgr0)
echo -e $flashred"ERROR: "$none$red"Something went wrong !"$none
