#!/bin/ksh

print 'in main prog'
cat junk.txt | awk -F';' -f 'awkProg.sh'
