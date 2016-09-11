#!/bin/sh

:<<NOTES
cut can extract either bytes, characters, or fields from 
strings
NOTES

echo "hello" | cut -d e -f 2 # prints llo

# cut field ranges include the delimiter
echo "helloelloello123" |cut -d e -f2,4 # prints lloello123 



# cut characters from a file
cut -c2-20 test.txt



