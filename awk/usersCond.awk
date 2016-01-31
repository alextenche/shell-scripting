# print login name from /ect/passwd where UID greather than 499
BEGIN { FS=":"; print "Username" }
$3 > 499 { print $1 }
END { print "Total users = " NR }
