#!/bin/bash
#=============================================================================
#
# FILE: list_dates.sh
#
# USAGE: list_dates.sh start_date end_date
#
# DESCRIPTION: List the dates between a given range of dates.
#
#=============================================================================
 
start_date="$1"
end_date="$2"
 
#=== FUNCTION ================================================================
#           NAME: usage
#    DESCRIPTION: Display usage information for this script.
#    PARAMETER 1: ---
#=============================================================================
function usage()
{
cat <<- EOT
Lists the dates between a given range of dates.
Dates must be in yyyy-mm-dd format
 
usage: $0 start_date end_date [--help]
    start_date (YYYY-MM-DD) -- First date in the range. 
    end_date (YYYY-MM-DD) -- Last date in the range. 
    help -- display this message
EOT
}
 
#-----------------------------------------------------------------------------
# Display usage
#-----------------------------------------------------------------------------
if [ "$1" == "--help" ]
then
    usage
    exit
fi
#-----------------------------------------------------------------------------
# Check the date formats
#-----------------------------------------------------------------------------
start_date=$(gdate --date="$start_date" +"%F") # Defaults to current date if none supplied.
if [ "$?" -eq "1" ] || [ -z "$start_date" ]
then
    echo "Please provide a start date in this format (YYYY-MM-DD)"
    exit
fi
 
end_date=$(gdate --date="$end_date" +"%F") # Defaults to current date if none supplied.
if [ "$?" -eq "1" ] || [ -z "$end_date" ]
then
    echo "Please provide an end date in this format (YYYY-MM-DD)"
    exit
fi
 
# Make sure that the first day is always before the second date.
# If a user enters 2012-09-08 2011-02-10 switch the dates to be
# 2011-02-10 2012-09-08
file_=$(gmktemp)
printf "%s\n%s" $start_date $end_date | sort > $file_
start_date=$(head -n 1 $file_)
end_date=$(tail -n 1 $file_)
rm $file_
#-----------------------------------------------------------------------------
# main
#-----------------------------------------------------------------------------
i=0
while [ "$date_" != "$end_date" ]
do
    date_=$(gdate --date="$start_date +$i day" +"%F")
    echo $date_
    i=$(expr $i + 1)
done
