#!/bin/bash


ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

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

echo "All arguments passed: $@"

for package in $@
do
   yum list installed $package
   if [ $? -ne 0 ]
   then
     yum install $package -y
     VALIDATE $? "Installation of package"
   else 
      echo -e "$package is already installed ... $Y SKIPING $N"
   fi   
done