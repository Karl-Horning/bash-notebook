# `flatten-subfolders`

A Bash script that flattens nested content within each immediate subfolder, without collapsing the top-level folder structure.

## What it does

Given a target directory (default: `/Users/$USER/flattenFolders`), the script iterates over each immediate subfolder, moves files from nested directories up into that subfolder, and deletes any empty directories left behind.

## Usage

### 1. Set the directory to flatten

The default directory is:

```bash
/Users/$USER/flattenFolders
```

To change this, edit this line in the script:

```bash
dir_to_flatten="/Users/$USER/flattenFolders"
```

### 2. Make the script executable

```bash
chmod +x flatten-subfolders.sh
```

### 3. Run the script

```bash
./flatten-subfolders.sh
```

## Notes

- Files are moved with `mv -i`, so the script prompts before overwriting any existing file.
- Only empty folders are deleted — no files are removed.

## Example folder structure

Before:

```text
flattenFolders/
└── MyProject/
    ├── notes/
    │   └── todo.txt
    └── drafts/
        └── draft1.md
```

After:

```text
flattenFolders/
└── MyProject/
    ├── todo.txt
    └── draft1.md
```
