#!/bin/bash

dir_to_flatten="/Users/$USER/flattenFolders"

if [[ -d $dir_to_flatten ]]
then
    # Change folder
    cd $dir_to_flatten
    # Find and replace all unwanted whitespace in file and folder names
    for file in *; do
    if [ -f "$file" ]; then
        # Replaces all occurrences of two or more spaces with a single space
        new_name=$(echo "$file" | sed 's/^ *//;s/ *$//;s/  */ /g')
        if [ "$new_name" != "$file" ]; then
            mv "$file" "$new_name"
        fi
    fi
    done


    echo "Finished renaming files!"
else
    echo "$dir_to_flatten does not exist"
fi
