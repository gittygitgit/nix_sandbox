#!/bin/sh

awk '/gold/ {if ($3 < 1984) print $3, "here I am", $4}' f1.txt
awk '/gold/ {if ($3 == 1984) print $3, "here I am", $4}' f1.txt
awk '/gold/ {if ($3 > 1984) print $3, "here I am", $4}' f1.txt
