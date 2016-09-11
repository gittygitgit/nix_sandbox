#!/bin/sh

awk '{if ($2 == 1) print $0}' f1.txt

