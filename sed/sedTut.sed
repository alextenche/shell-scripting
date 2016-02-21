# executing commands
sed 's/^/ls -l /e' file.list

sed 's/^/stat /e' file.list

sed 's/^/sudo useradd/e' user.list

sed 's/^/sudo userdel -r/e' user.list

sed ' /^\// s/^/tar -rf catalog.tar /e ' cat.list

sed ' /^\// s/^/rm -f /e ' cat.list

# delete empty lines from virtualhost.conf
# -i inplace edit
sed -i ' /^\s*$/d;/^<\/Virt/a \ ' virtualhost.conf
