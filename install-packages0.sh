#!/bin/bash


ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
then
   echo -e "$R ERROE:: Please run script with root access $N "
   exit 1
else
  echo "you have root access"
fi

echo "All arguments passed: $@"