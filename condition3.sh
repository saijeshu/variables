#!/bin/bash
 
ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "erroe: please run this script wit root aceess"
    exit 1
else
     echo "you are root aceess"
fi    
  yum install mysql -y 

if [$? -ne 0]
  then
     echo "error::installing mysql is failed"
     exit 1
  else
    echo "installing mysql is success"
fi 
