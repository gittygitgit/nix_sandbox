#!/bin/sh


# monthdays
# calculates the number of days in a month 
# usage monthdays yyyy mm
# or    monthdays yyyymmdd

# if there are no command-line arguments, assume that a yyyymmdd is being
# piped in and read the value.
# if there is only one argument, assume it's a yyyymmdd on the command line;
# otherwise it is a yyyy and mm on the command line

if  [ X$1 = X ]
then
   read ymd
elif [ X$2 = X ] 
then
   ymd=$1
else
   ymd=`expr \( $1 \* 10000 \) + \( $2 \* 100 \) + 1`
fi

# extract the year and the month

y=`expr $ymd / 10000` ;
m=`expr \( $ymd % 10000 \) / 100` ;

# 30 days hath September etc.
case $m in
   1|3|5|7|8|10|12) echo 31 ; exit ;;
   4|6|9|11) echo 30 ; exit ;;
   *) ;;
esac

# except for month 2, which depends on whether the year is a leap year
# Use yeardays to get the number of days in the year and return a value
# accordingly.
diy=`yeardays $y`

case $diy in
   365) echo 28 ; exit ;;
   366) echo 29 ; exit ;;
esac

