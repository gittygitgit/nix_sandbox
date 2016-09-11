#!/bin/sh
<<================================================
Grep examples
================================================

# case insensitive
echo "Test"|grep -i test # outputs Test

echo "Test\nTest2\nHello\nTest3"|grep -i test

# full words
echo "Testing this in bash\nTesting\n Test123\nIndian"|grep -iw in

# context
echo "Testing one\nTesting two\nTesting three\nTesting four\nTesting five"|grep -i three -C 1
echo "Testing one\nTesting two\nTesting three\nTesting four\nTesting five"|grep -i three -A 1
echo "Testing one\nTesting two\nTesting three\nTesting four\nTesting five"|grep -i three -B 1

# inverted
echo "Testing one\nTesting two\nHello\nTesting three\nTesting four\nTesting five"|grep -vi test

# multiple patterns
echo $'one\ntwo\nthree\nfour\nfive\nsix\nseven\neight\nnine'|grep -e en -e wo -e ve

# invert multiple patterns
echo $'one\ntwo\nthree\nfour\nfive\nsix\nseven\neight\nnine'|grep -v -e en -e wo -e ve

# count number of matches
echo $'one\ntwo\nthree\nfour\nfive\nsix\nseven\neight\nnine'|grep -c -e en -e wo -e ve

# exclude directories from search
grep -d skip security /etc/*

# exclude files specified in GLOB
grep --exclude=servic*  secure /etc/*

# include only files matching GLOB
grep --include=host* -d skip 192 /etc/*


