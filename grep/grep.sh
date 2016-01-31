#!/bin/bash

# containing 4 at end of the line
grep '4$' file

# not containing 4 at end of the line
grep -v '4$' file

# empty lines
grep -v '^$' file

# rotate 4 or 6 at the end of the line
grep 'rotate [46]$' file

# not containing 4 at the end of line
grep 'rotate [^4]$' file

# Server or server
grep '[Ss]erver' file

# \b - boundary
grep '^server\b' file

# return pop2, po3, etc.
grep '\bpop[0-9]\b' file

# \B - reverse \b
grep 'pop[0-9]\B' file

# -v see lines without comments
grep -v '^\s*#' file

# -E enhanced regular expresions
grep -E 'start\s?end' file

# match start end with two spaces in between
grep -E 'start\s{2}end' file

grep -i break-in auth.log | awk {'print $12'}

# -c count
grep -c name /proc/cpuinfo

# check social number for employees
grep -vE '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' employees.txt
