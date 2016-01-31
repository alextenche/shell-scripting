# print login name from /ect/passwd
BEGIN { FS=":"; print "Username" }
      { print $1 }
END { print "Total users = " NR }
