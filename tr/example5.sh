#!/bin/sh

# remove duplicate characters
trimmed = $(echo 'field1      field2      field3'|tr -s ' ')
echo $trimmed

if [ 'field1 field2 field3' = $trimmed ]; then
  echo "match"
fi
 
