# `flatten-to-root`

A Bash script to recursively flatten all nested subfolders, moving every file to the root of the target directory and removing empty folders.

## What it does

Given a base directory (default: `/Users/$USER/flattenFolders`), the script:

1. Deletes all `.DS_Store` files.
2. Moves all files from any depth into the top-level root folder.
3. Removes empty directories.

## Usage

### 1. Set the target directory

By default, the script targets:

```bash
/Users/$USER/flattenFolders
```

To use a different directory, edit this line:

```bash
dir_to_flatten="/path/to/your/folder"
```

### 2. Make the script executable

```bash
chmod +x flatten-to-root.sh
```

### 3. Run the script

```bash
./flatten-to-root.sh
```

## Notes

- Files are moved with `mv -i`, so the script prompts before overwriting any existing file.
- All empty directories are deleted after flattening — back up the folder if you need to preserve the structure.

## Example folder structure

Before:

```text
flattenFolders/
├── A/
│   └── file1.txt
├── B/
│   └── subfolder/
│       └── file2.txt
└── C/
    └── file3.txt
```

After:

```text
flattenFolders/
├── file1.txt
├── file2.txt
└── file3.txt
```

All directories `A`, `B`, `C`, and `subfolder` are removed.
