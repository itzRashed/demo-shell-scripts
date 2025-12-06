#!/bin/bash

# user defined variables
hero="rancho"
villain="virus"

echo "3 idiots ka hero hein $hero"
echo "3 idiots ka villain hein $villain"

#shell/ environment variables bhi hota hein(pre-defined)

echo "current logged in user $USER"

# read=user input, -p=print/prompt show, fullname=variable

read -p "Rancho ka poora nam kya tha?" fullname

echo "Rancho ka poora nam $fullname tha"

#arguments : where we can give input while executing file and not after execution of the file
# anything we write in shell is an argument like:./3_idiots raju farhan rancho

echo "movie ka nam: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot: $3"

echo "Hence the 3 idiots are $@"
