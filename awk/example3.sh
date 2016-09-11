#!/bin/sh
# print record num of each line
awk '{print NR}' f1.txt

# print total number of records
awk 'END {print NR}' f1.txt
