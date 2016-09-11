#!/bin/sh
#
# Author: Mike Grudkowski (mgrudkowski@gmail.com)
#
# Generates "current date-next date" pairs.  Pairs
# will exclude both weekends and holidays.
#
# Adapted from TBR
:<<notes


algorithm:
for a given range of dates
  stage tuples of current / next bus day
 
  if the current date is a business day
    if there's a current bus date already staged
      assign date to next bus date
      print tuple
      remove current date
      make next bus date current date.
    else
      assign date to current date
  else
    skip    

tradeDateMap.put("20141230", "20141231");
notes
# default start date is today

STARTDATE_DEFAULT=$(date)
startdate=$STARTDATE_DEFAULT

arg0=$(basename $0 .sh)

usage()
{
  echo "Usage: $arg0 [-s date] -e date" 
  exit 1
}

error()
{
  echo "$0: $*" 1>&2
  exit 1
}

if [ "$1" == "--help" ]
then
  usage
  exit
fi
args=`getopt s:e: $*`

if [ $? != 0 ]
then
  echo 'Usage: ...'
  exit 2
fi

# assign args to positional parameters
set -- $args

# args is lowered during each loop via shift command
# eventually $# becomes 0 and the loop exits
while (($#)); do
  case "$1" in
    "-s") 
      startdate=$(gdate --date="$2" +"%Y%m%d")
      if [ "$?" -eq "1" ]; then
        echo "Bad startdate.\n"
        usage
      fi
      shift 2
      ;;
    "-e") 
      enddate=$(gdate --date="$2" +"%Y%m%d")
      if [ "$?" -eq "1" ]; then
        echo "Bad enddate.\n"
        usage
      fi
      shift 2
      ;;
    "--")
      shift;;
  esac
done

if [ -z "$enddate" ]; then
  echo "No enddate provided."
  usage
  exit
fi

if (( $(gdate -d"$startdate" +"%s") >= $(gdate -d"$enddate" +"%s") ));
then
  echo "Start date must be prior to end date."
  exit 3
fi
 
printf "%s\n%s\n" $startdate $enddate
#-------------
# main
#-------------

read -r -a HOLIDAYS <<< "20150101 20150119 20150216 20150403 20150525 20150703 20150907 20151126 20151225"

isHoliday() {
  local d=$1
  local i
  for i in ${HOLIDAYS[@]}; do
    if [ $d == $i ]; then
      return 0
    else
      continue
    fi
  done
  return 1
}

i=0
while [ "$curdate" != "$enddate" ]; 
do
  #sleep 1
   
  d=$(gdate --date="$startdate +${i}day" +"%Y%m%d")
  if [ $i != 0 ]; then
    curdate=$nextdate
  fi  
  if [ -n "$curdate" ] && [ "$curdate" == "$enddate" ]; then
    exit 0
  fi
  
  if ! isHoliday $d && (( $(gdate --date="$d" +"%u") < 6 )); then
    #printf "%s is a non-business day\n" $d 
  #else
    nextdate=$d


    if (( $i != 0 )) && [ -n "$curdate" ] && [ -n "$nextdate" ]; then
      printf "tradeDateMap.put(\"%s\", \"%s\");\n" "${curdate}" "${nextdate}"
    fi
  fi


  (( i += 1 ))
done
