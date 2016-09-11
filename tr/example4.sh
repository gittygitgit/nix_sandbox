#!/bin/ksh

# Remove all occurences of newline characters from file1 and output to file2

file1=$1
file2=$2

tr -d '\n' < $file1 > $file2

