
:q!

.func.sh

BEGIN {
	print "BEGIN"
}

{
	print $(strip("00023"))
}

END {
	print "END"
}
