#!/bin/sh

# simple - print date in default format
date

# current date as seconds since epoch
date +%s

# print date as ccyymmddHHmm.ss
date +%Y%m%d%H%M.%S

# ...just date
date -I
date -I'date'

# ...to hour precision
date -I'hours'

# ...minutes
date -I'minutes'

# ...seconds
date -I'seconds'

# ... HH:MM:ss
date +%T

# ...week num of the year
date +%W

# ...numeric timezone
date +%z

# ...alphanum time zone
date +%Z

# print arbitrary date
date -d '2012-12-29' +%Y%m%d%H%M.%S
