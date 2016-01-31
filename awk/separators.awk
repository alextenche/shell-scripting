{FS=","; print $2}

BEGIN{FS=","} {print $2}

BEGIN{RS="!";FS=","} {print $2}

BEGIN{RS="";FS="\n"} {name=$1;address=$2;citystatezip=$3; print name "," address, "," citystatezip}

BEGIN{OFS=", ";ORS="!"} {print $2, $1}

FS="," {print $1 "\t" $2 "\t" $3}

BEGIN{FS=","; OFS="\t"} {print $1, $2, $3}

/\.txt$/ {total += $5; print} END {print total}

{print $1, $2, "<" $3 ">"}

{if(NF==4){$2=""}; print}
