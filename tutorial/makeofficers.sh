#!/bin/bash

awk '
{FS="\t"}
BEGIN {
            print "<h1> title </h1>";
            print "<ul>";
}

NR > 1 { # skip header line
            print "<li>";
            print $1, $2, $3 ": "; # office, first name, last name
            print "<a href=\"mailto:" $12 "\">" $12 "</a>"; #email
            print "</li>";
}

END {
            print "</ul>";
}' $1 > officers.html
