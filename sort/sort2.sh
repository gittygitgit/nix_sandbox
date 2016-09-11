#!/bin/bash

# sort by the fourth column
sort -k 4,4 app8009.txt

# sort by second column, using | separator
sort -t '|' -k 2,2 test.txt

# sort by second column numerically, using | separator
sort -t '|' -n -k 2,2 test.txt


# sort by second column numerically in reverse, using | separator
sort -t '|' -nr -k 2,2 test.txt

# sort by first column numberically, where there are multiple delimiters
sort -t '| '
