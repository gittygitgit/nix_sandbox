#!/bin/sh

:<<===================================
===================================

# split into files two lines each 
split -l 2 test.out

# split into files six lines each prefixed with foo
split -l 6 test.out foo

# split into separate file whenever * appears in the file
split -p '\*' test.out
