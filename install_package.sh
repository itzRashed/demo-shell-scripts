#!/bin/bash

<<info
This script will install package that we pass in the arguments
info

echo "Installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y

echo "Installation Completed"
