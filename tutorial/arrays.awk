{a[1]=$1; a[2]=$2}; a[3]=$3; print a[1], a[2], a[3]}

{a["first"]=$1; a["second"]=$2; a["third"]=$3; print a["third"], a["second"], a["first"]}

{a["first"]=$1; a["second"]=$2; a["third"]=$3; for(i in a) { print i, a[i] }}
