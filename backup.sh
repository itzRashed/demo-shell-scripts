#!/bin/bash

<<info
This shell script will take periodic backups
eg. ./backup.sh <source> <destination>

src /home/ubuntu/scripts
dest /home/ubuntu/backups
info

src=$1
dest=$2

timestamp=$(date '+%d-%m-Y')

zip -r "$dest/backup-$timestamp.zip" $src

aws s3 sync "$dest" s3://tws-backup-dx
echo "Backup Done and uploaded to s3!"




