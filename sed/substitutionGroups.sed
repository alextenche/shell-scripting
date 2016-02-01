
# uppercase the first field of a comma separated file
sed 's@\([^,]*\)@\U\1@' employees.txt

# uppercase the first field and lowercase the second field of a comma separated file
sed 's@\([^,]*\),\([^,]*\)@\U\1\L\2@' employees.txt

sed 's/\([^,]*\)/\U\1/' employees.txt

sed 's/\([^,]*\),\([^,]*\)/\U\1,\L\2/' employees.txt
