#!/bin/sh

# print time of all log entries having Lob
awk '/Lob/{ print $1}' server.log

# awk prints lines matching pattern by default
awk '/Lob/' server.log
awk '$0 ~ /Lob/' server.log

# match pattern in third field only
awk '$3 ~ /Lob/' server.log

# grep will print the entire line
grep 'Lob' server.log

# print third field where first field equals ... exactly
awk '$1=="00:53:20,845"{print $3}' server.log

# a custom delimiter
awk -F"[" '{ print $1}' server.log

# Special variables
# FS - Field Separator
# OFS - Output Field Separator
# NR - line number ranging from 1 to actual line-count
awk '{print $1}' FS="[" server.log
awk '{print $1,$3}' OFS="#" server.log
# print line 1000
awk 'NR==1000' server.log

# print every line, another way
awk '1' server.log

# print records containing ... to another file
awk '/sandbox-jee6-ear.ear/{print > "foo.out"}' server.log

# print first field for all records having ERROR in second field
awk '$2=="ERROR"{print $1}' server.log

# print first and second fields for all records having ERROR in second field
awk '$2=="ERROR"{print $2,$1}' OFS="^" server.log

# print first and second fields for all records having ERROR in second field
awk '$2=="ERROR" || $2=="WARN"{print $2,$1}' OFS="^" server.log

# split file into two based on occurrence of a word
awk '/START/{x="F"++i}{print > x}' file2.txt

# print record number

