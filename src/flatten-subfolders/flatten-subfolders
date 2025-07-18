#!/bin/bash

dir_to_flatten="/Users/$USER/flattenFolders"

if [[ -d $dir_to_flatten ]]
then
    for i in $dir_to_flatten/* ; do
    if [ -d "$i" ]; then
        echo "$i"
        find "$i" -mindepth 2 -type f -exec mv -i '{}' "$i" ';'
    fi
    done

    # Change folder
    cd $dir_to_flatten
    # Delete all of the empty folders
    find . -type d -empty -delete
else
    echo "$dir_to_flatten does not exist"
fi
