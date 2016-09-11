find files only
find . -type f

find folders only
find . -type d

case insensitive name
find . -iname foo

don't include files of name containing a certain dirname in their path
find . -path *test* -prune 

find files of a certain path (includes base path and fname)
find . -path "./sr*sc"

by default, action applied is -print
if -prune is present, output is the root directory pruned

find files except those under a certain dir
find -path *main -prune -o  -name *.txt -print
