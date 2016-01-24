{print NF, $0}

{print NR, $0}

{print NR, FILENAME, FNR,  $0}

{print $(NF-1)}

{print $($1)}

{$2="TWO"; print}

BEGIN{OFS="!"} {$11="ELEVEN"; print NF, $0}

{$0="one two three"; print NF, $2}

{hello=$1; goodbye=$2; print hello, goodbye}

{a=1;b=3; print a + b}

{a=1;b=3; print a b}

{a=1;b=2;c=3; print a b * c}

{a=1;b=2;c=3; print (a b) * c}

{print "\"" $1 "\" + 0 = " $1 + 0}

BEGIN{a=1} {print a, $0}

BEGIN {print "title"} {print} END {print NR}
