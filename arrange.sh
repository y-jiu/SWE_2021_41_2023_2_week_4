#!/bin/bash

# Specify the directory to arrange
directory="files/"

# Loop through each file in files/
for file in "$directory"/*; do
  if [ -f "$file" ]; then  # Check if it's a regular file
    filename=$(basename "$file")
    first_letter="${filename:0:1}"  # Get the first letter of the filename
    
    # Convert the first letter to lowercase if it's uppercase
    first_letter=$(echo "$first_letter" | tr '[:upper:]' '[:lower:]')

    if [[ "$first_letter" =~ [a-z] ]]; then
      mv "$file" "$first_letter/"
    fi
  fi
done

echo "Done!"
