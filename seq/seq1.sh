#!/bin/sh

# generate sequence from 1 to 3 stepping by default of 1
seq 1 3

# from 0 to 3 step by .5
# output isn't formatted
seq 0 .5 3

seq -s ";\\n" 1 3

seq -w -s ";\\n" 1 10


