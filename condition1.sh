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