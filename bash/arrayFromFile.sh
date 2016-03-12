#!/bin/bash

# Read the file in parameter and fill the array named "array"
getArray() {
    array=() # Create array
    while IFS= read -r line # Read a line
    do
        array+=("$line") # Append line to the array
    done < "$1"
}


# Print the file (print each element of the array)
getArray "file.txt"
for e in "${array[@]}"
do
    echo "$e"
done
