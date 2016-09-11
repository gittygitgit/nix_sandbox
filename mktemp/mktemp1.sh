#!/usr/local/bin/bash

# create temp directory
TEMP=$(mktemp -d foo-XXXX)

ls -ltra

rm -rf $TEMP


# create temp directory in /tmp
TEMP1=$(mktemp -d -p /tmp tempXXXX)

rm -rf $TEMP1



