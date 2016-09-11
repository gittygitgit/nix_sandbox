#!/bin/sh
<<=====================================================

You can execute commands on the result of a find command.

If the {} pattern is included in the command, it is replaced with the full path of 
each file found.

The specified command is executed from the starting dir (where the script was run from).

The {} pattern may need to be protected from being interpretted as shell script punctuation
by being surrounded by single quotes.  Similarly, it might be necessary to escape the closing 
semi-colon .  
=====================================================

# Performing actions on find results

# setup
touch -m -t 200901011212 ./foo.txt


# run ls on files in home dir
find ~ -exec ls -ltra '{}' \;






