#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo -e "$R ERROE:: Please run script with root access $N "
   exit 1
else
  echo "you have root access"
fi

echo "All arguments passed: $@"