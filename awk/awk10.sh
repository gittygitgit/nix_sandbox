# prints all filenames, excluding . and .0.
awk '{if ($9 != ".." && $9 != ".") print $9}' ls.out

# prints odd numered lines
awk '{ if ( NR % 2 == 1 ) print NR }' ls.out

# creates report, excluding first row
awk 'BEGIN { printf("%-20s%-20s\n", "filename", "size") } { if ( NR > 1 && $9 != "." && $9 != "..")  printf("%-20s%20s\n", $9, $2) }' ls.out

# creates another report, inclucing row numbers
awk 'BEGIN { i = 1; printf("%10s\n", "Row-num") } { if ( NR != 1 ) printf("%10d\n", i++) }' ls.out
 
