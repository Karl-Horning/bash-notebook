# Bash notebook

> This repo is no longer maintained and is kept for reference only.

Personal bash scripts for file management, plus a [bash cheatsheet](./CHEATSHEET.md).

## Scripts

| Script                                            | Description                                                     |
|---------------------------------------------------|-----------------------------------------------------------------|
| [`clean-filenames`](./src/clean-filenames/)       | Strips leading, trailing, and excess spaces from filenames      |
| [`flatten-to-root`](./src/flatten-to-root/)       | Moves all files from nested subdirectories into the root folder |
| [`flatten-subfolders`](./src/flatten-subfolders/) | Flattens nested content within each immediate subfolder         |

## Setup

The flatten scripts target `/Users/$USER/flattenFolders` by default. To change this, edit the `dir_to_flatten` variable at the top of the script.

## License

Released under the [MIT License](./LICENSE) by [Karl Horning](https://github.com/Karl-Horning).
