#!/bin/ash

# for loop
awk 'BEGIN{ORS="\n"} {for (i=1; i < 3;i++) {print "123 "i,NR}}' /etc/passwd

# i doesn't get expanded in a string, also variables aren't preceded with $
awk '{for (i=0; i < 5;i++) {print "abci","abc$i",i,"abc"}}' /etc/passwd

# variable arithmetic
awk '{for (i=0; i < 5;i++) {print "abc$i",i,"abc" (i*2)(i+4)(i-1+4)}}' /etc/passwd

# regex
awk 'BEGIN{FS=":"} $3 ~ /1[78]/ {print}' /etc/passwd
awk 'BEGIN{FS=":"} {if ($3 ~ /1[78]/) print}' /etc/passwd

awk 'BEGIN{FS=":"} {if ($3 ~ /^1[^789]$/) print}' /etc/passwd
