#!/bin/sh

awk 'FS=":" {if (NR==3) print $1}' /etc/passwd

echo "SYSTEM:*:18:544:,S-1-5-18::"|awk 'BEGIN{FS=":"} {print $1}'

# only print records with > 1 field
awk 'BEGIN{FS="*"} {if (NF>1) print NF}' /etc/passwd

# strings are concatenated...so arbitrary spaces aren't maintained
awk 'BEGIN{FS=":"} {print $1 "s"}' /etc/passwd

# no spaces btw fields, and repeat field 1
awk 'BEGIN{FS=":"} {print $1$3$1}' /etc/passwd

# commas introduce default spacing btw fields
awk 'BEGIN{FS=":"} {print $1,$3,$1}' /etc/passwd

# changing the default output field separator
awk 'BEGIN{FS=":";OFS="sss"} {print $1,$3,$1}' /etc/passwd

# 
