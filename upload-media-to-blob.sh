#!/bin/bash

echo -e "This script will upload all files of specified extension into azure blob container.\nWhat kind of files would you like to upload to the container? (example: jpg, png, gif)"
read EXTENSION
echo -e "What is the container name in the Azure account?"
read CONTAINER
echo -e "Confirm  upload of all $EXTENSION files inside the current directory ( `pwd` )  into the $CONTAINER container? (y/n)"
read CONFIRM

if [ $CONFIRM = "y" ]; then
	echo "Uploading..."
	find . -name "*.$EXTENSION" -exec azure storage blob upload {} $CONTAINER
fi

