#!/bin/sh

awk '{print "Processing Record - ",NR;}END {print NR, "Students Records are processed";}' ../sample_text/student-marks


echo "a|b|c" |awk 'BEGIN{RS="|"} {print}'

echo "a,b,c|d,e,f|g,h,i"|awk 'BEGIN{RS="|"; FS=","} {print $1 ", " $2 ", " $3 }'

# NF number of fields in the record
echo "a,b,c"|awk 'BEGIN{RS=","} {print NF}'

# RS record separator...a while loop
echo "a,b,c"|awk 'BEGIN{x=1; RS=","} { while ( x < 3 ) {print x; x++}}'

# for loops
echo "a,b,c"|awk 'BEGIN{RS=","} {for ( i=1; i < 4; i++ ) {print "," NR}}'

echo "abc def ghi"|awk 'BEGIN{RS=" "} {print ""}'

# $0 means whole line
echo "abc def ghi"|awk 'BEGIN{RS=" "} {print $0 "\n"}'

# "" means blank line
echo "abc def ghi"|awk 'BEGIN{RS=" "} {print ""}'

# awk concatenates strings by default
# the following doesn't put any spaces between fields
echo "a,b,c"|awk 'BEGIN{FS=","} {print $1 $2}'

# this does...
echo "a,b,c"|awk 'BEGIN{FS=","} {print $1" " $2}'
