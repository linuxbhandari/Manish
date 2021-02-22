#!/bin/bash
#set -x
echo "$1"
echo "$2"

A="userlist"
B="userinfo"

if [ $1 == $A ]
then 
	USER_LIST=$(awk -F : '{print $1}' /etc/passwd)
	echo $USER_LIST

elif [ $1 == $B ]
then
	USER_INFO=$(awk -F : '{print $3}' /etc/passwd)
	echo $USER_INFO
else	
	echo Sorry.
fi
