#!/bin/sh

# simple examples

# list files in /tmp dir
find /tmp -maxdepth 1 

# list files in home dir
find ~ -maxdepth 1

# ...starting with .bash
find ~ -maxdepth 1 -name '.bash*'

# ...and subdirs
find ~ 

# ...newer than three months
find ~  -mtime -90 

# list directories in home dir
find ~ -type d -maxdepth 1

# ...files in home dir
find ~ -type f -maxdepth 1

# ...exclude files ending in sh or txt...
find . \( ! -name '*.sh' -a ! -name '*.txt' \)
