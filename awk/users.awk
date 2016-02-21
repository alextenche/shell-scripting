# print login name from /ect/passwd

BEGIN { FS=":"; print "Username" }
# find all users for ubuntu
$3 > 999 { print $1; count++ }
# find users starting with "s"
/^s/ { print $1; count++ }
END { print "Total users = " count }
