#!/bin/bash

dir_to_flatten="/Users/$USER/flattenFolders"

if [[ -d $dir_to_flatten ]]
then
    # Change folder
    cd $dir_to_flatten
    # Find and delete all .DS_Store files in all folders
    find . -name ".DS_Store" -type f -delete
    # Move all files to the root folder
    find $dir_to_flatten -mindepth 2 -type f -exec mv -i '{}' $dir_to_flatten ';'
    # Delete all of the empty folders
    find . -type d -empty -delete

    echo "Finished flattening folders!"
else
    echo "$dir_to_flatten does not exist"
fi
