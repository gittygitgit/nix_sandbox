#!/usr/bin/env sh

:<< NOTES
gzip is a compression decompression util.
NOTES
cat > foo.txt << FOO
one
two
three
four
FOO

# compress a file, leaving orig input intact
gzip -k foo.txt



