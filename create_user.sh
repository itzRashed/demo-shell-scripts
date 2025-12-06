#!/bin/bash

<<help first of all this is a multi line comment. after what we use for open like help same word to close.

this is a shell script to create user.

help

echo "========= Creation of User Started =========="

read -p "enter username:" username

read -p "enter password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "======== User Creation Successful========="

sudo userdel $username

echo "======= Deletion of user successful========"

cat /etc/passwd | grep $username | wc | awk '{print $1}'

echo "as wc is 0 the user is deleted"
