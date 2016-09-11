#!/bin/ksh
#
# Replace all lines except those containing star to sun
#

sed '/star/ !c sun' example11.txt

