#!/bin/bash

while getopts :u:p:ab option; do
  case $option in
          u) user=$OPTARG;;
          p) pass=$OPTARG;;
          a) echo "got the A flag";;
          b) echo "got the B flag";;
          ?) echo "unknow flag $OPTARG";;
  esac
done

echo "User: $user / Pass: $pass"
