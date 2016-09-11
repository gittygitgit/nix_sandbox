#!/bin/sh

COLS=[]
FILE_RAW_PATH="/cygdrive/c/dev/scripts"
FILE_RAW_NAME="sraw.csv"
FILE_RAW="${FILE_RAW_PATH}/${FILE_RAW_NAME}"
echo "Checking for raw file ('$FILE_RAW')."

if [ ! -e $FILE_RAW ]; then echo "Can't find file.";exit 0; fi



echo "here"

