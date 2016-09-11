#!/bin/sh


foo="Walking home I fell in a hole, wholly cow, lol"

echo $foo | sed 's/\( \)ho/\1mm/'

echo $foo | sed 's/\( \)ho/\1mm/g'

echo $foo | sed 's/\( \)ho/\1mm/2'


