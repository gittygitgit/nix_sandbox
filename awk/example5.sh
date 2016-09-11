#!/bin/sh

awk '{if ($3 == 1986) num1986 += 1} END {print num1986}' f1.txt
