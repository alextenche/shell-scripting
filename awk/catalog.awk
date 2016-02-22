BEGIN { FS="[><]"; RS="\n\n"; OFS=" "; }
$0 ~ search { print $4 ": " $5, $8 ": " $9, $12 ": " $13 }

# awk -f catalog.awk search=driver tool.xml
# awk -f catalog.awk search=saw tool.xml
# awk -f catalog.awk search=hammer tool.xml
