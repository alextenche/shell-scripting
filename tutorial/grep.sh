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

grep '\bpop[0-9]\b' file

grep 'pop[0-9]\B' file

# -v remove
grep -v '^\s*#' file
