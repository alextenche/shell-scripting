# suppres stdout
sed -n ' p ' file

# p print command
sed -n '1,3 p' file

sed -n '/^root/ p' file

# lines 1 to 5
sed -n '1,5 p ' file

# lines 5 to the end of file
sed -n '5,$ p ' file

sed -n '/^a[0-9]/ p' file
