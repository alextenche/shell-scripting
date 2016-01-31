# print the matched lines
# -n suppres stdout
sed -n ' p ' /etc/passwd

# p print command
# 1,3 range; lines 1 to 3
sed -n ' 1,3 p ' file

sed -n '/^root/ p' file

# lines 1 to 5
sed -n '1,5 p ' file

# lines 5 to the end of file
sed -n '5,$ p ' file

# lines starting with regex
sed -n '/^a[0-9]/ p' file

# s/ standard replace
# /g global
sed ' 2,4 s/^/    /g' file

# inserting spaces at the begining of line
sed -n ' 6,9 s/^/    /p' file > modifiedFile

sed -n ' /^gret/ s@/bin/bash@/bin/sh@p' file

# on lines begining with gretchen repalace /bin/bash with /bin/sh
# @ delimiter
sed ' /^gretchen/ s@/bin/bash@/bin/sh@' file

ping -c 1 example.com | grep 'bytes from' | cut -d -f 4

# append
sed '/^server 3/ a server ntp.example.com' /etc/ntp.conf

# insert - line before match
sed '/^server i/ a server ntp.example.com' /etc/ntp.conf

# delete
sed '/^server\s[0-9]\.ubuntu/ d'  /etc/ntp.conf

# -f file
# ntp.sed - control file
sed -f ntp.sed /etc/ntp.conf

# -i implements change (keeps original file in .bak)
sed -i.bak -f ntp.sed /etc/ntp.conf

# multiple operations, insert and delete
sed '{
  /^server 0/i server ntp.example.com
  /^server\s[0-9]/d
}' file

# example for modif server config over ssh
ssh -t user@server sudo sed -i.bak -f /tmp/ntp.sed /ect/ntp.conf
