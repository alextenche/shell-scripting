/up/{print "UP:", $0} /down/{print "DOWN:", $0}

$4 ~ /up/{print}

$3 ~ /the/{print}

$3 ~ /^the/{print}
