#!/bin/ksh
#
# Replaces all occurrences of hello with bye
#

echo hello there, I am mike hello|sed 's/hello/bye/g'
