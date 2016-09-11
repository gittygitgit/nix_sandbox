#!/bin/sh

# create a file
touch foo.txt

# show file details
ls -ltra foo.txt --full-time

# change modified time of file
touch -m -t 201110311212.45 foo.txt

