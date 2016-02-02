#!bin/bash
printf "Name:\t%s\nID:\t%04d\n" "Alex" "123"
printf "Name:\t%s\nID:\t%04d\n" "Anybody" "1234"

today=$(date + "%d-%m-%Y")
time=$(date + "%H:%M:%S")

printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$d"
