#!/bin/sh

. ./setup.sh

sleep 3

# print info about a file
stat foo.out

# ...last mod as seconds since Epoch
stat -c %Z foo.out

# age of file in seconds
OLD=`stat -c %Y foo.out`; NOW=`date +%s`; (( DIFF = NOW - OLD )); echo "The file is $DIFF seconds old"

# make the file really old
touch -m -t 201201011212.00 foo.out
stat -c %Z foo.out
OLD=`stat -c %Y foo.out`; NOW=`date +%s`; (( DIFF = NOW - OLD )); echo "The file is $DIFF seconds old"

# age in minutes
OLD=`stat -c %Y foo.out`; NOW=`date +%s`; (( DIFF = (NOW - OLD)/60 )); echo "The file is $DIFF minutes old"

# age in hours
OLD=`stat -c %Y foo.out`; NOW=`date +%s`; (( DIFF = ((NOW - OLD)/60)/60 )); echo "The file is $DIFF hours old"

# age in days
OLD=`stat -c %Y foo.out`; NOW=`date +%s`; (( DIFF = (((NOW - OLD)/60)/60)/24 )); echo "The file is $DIFF days old"
