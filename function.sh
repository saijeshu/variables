#!/bin/bash
 
ID=$(id -u)

VALIDATE(){
if [ $? -ne 0 ]    
then
    echo "error:$1 is failed"
    exit 1
else
   echo "$1 is success"
fi
}   
if [ $ID -ne 0 ]
then
    echo "erroe: please run this script wit root aceess"
    exit 1
else
     echo "you are root aceess"
fi

yum install mysql -y

VALIDATE "installing mysql"

yum install git -y

VALIDATE "installing git"