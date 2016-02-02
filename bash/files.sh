#!bin/bash
i=1
while read f; do
  echo line $i: $f
  ((i++))
done < employees.txt
