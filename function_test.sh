#!/bin/bash

<<info
This iis an explanation of functions
info

function create_user {

	read -p "Enter the username: " username

	sudo useradd -m $username

	echo "user created successfully"
}
create_user
