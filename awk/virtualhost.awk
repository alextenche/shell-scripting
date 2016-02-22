BEGIN { RS="\n\n" }
$0 ~ search { print }

# awk -f virtualhost.awk search=lion virtualhost.conf
# awk -f virtualhost.awk search=saw tool.xml
