#!/bin/sh

# string functions
mystring="How are you doing today?"
echo $mystring|awk '{print length(mystring)}'

