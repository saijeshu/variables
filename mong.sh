#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/temp/$0-$TIMESTAMP.log"

echo "script strated executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $? -ne 0 ]
    then
       echo -e "$2...$R FAILED $N"
    else
       echo -e "$2...$G SUCCESS $N" 
    fi   
}
if [ $ID -ne 0 ]
then
   echo -e "$R ERROE:: Please run script with root access $N "
   exit 1
else
  echo "you have root access"
fi

cp mongo.repo /etc/yum.repos.d/mongo.repo &>> $LOGFILE

VALIDATE $? "copied mongodb repo"
