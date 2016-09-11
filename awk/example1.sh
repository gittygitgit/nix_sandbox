#!/bin/sh

awk '/ingot/ {print $1,$2}' f1.txt
