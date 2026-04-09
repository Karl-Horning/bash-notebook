# Bash notebook

Personal bash scripts for file management, plus a [bash cheatsheet](./CHEATSHEET.md).

## Scripts

| Script                                            | Description                                                     |
|---------------------------------------------------|-----------------------------------------------------------------|
| [`hello-world`](./src/hello-world/)               | Prints "hello world" to the terminal                            |
| [`clean-filenames`](./src/clean-filenames/)       | Strips leading, trailing, and excess spaces from filenames      |
| [`flatten-to-root`](./src/flatten-to-root/)       | Moves all files from nested subdirectories into the root folder |
| [`flatten-subfolders`](./src/flatten-subfolders/) | Flattens nested content within each immediate subfolder         |

## Setup

Each script targets `/Users/$USER/flattenFolders` by default. To change this, edit the `dir_to_flatten` variable at the top of the script.

## Licence

MIT © 2025 [Karl Horning](https://github.com/Karl-Horning)
