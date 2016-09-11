#!/bin/ksh
#
# replace 1 with 2 on all lines containing two[D[D[Dthe word two
# replace 1 with 3 on all lines containing the word three
#

sed '
/two/ s/1/2/
/three/ s/1/3/' tabular.txt
