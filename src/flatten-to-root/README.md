# `flatten-to-root`

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Introduction](#introduction)
- [What It Does](#what-it-does)
- [Usage](#usage)
  - [1. Set the target directory](#1-set-the-target-directory)
  - [2. Make the script executable](#2-make-the-script-executable)
  - [3. Run the script](#3-run-the-script)
- [Notes \& Tips](#notes--tips)
- [Example Folder Structure](#example-folder-structure)
  - [Before](#before)
  - [After](#after)

## Introduction

A Bash script to recursively flatten all nested subfolders within a specified directory, moving **all files** to the root of that directory and removing any empty folders. Useful for cleaning up deeply nested folder structures.

## What It Does

Given a base directory (default: `/Users/$USER/flattenFolders`), the script:

1. **Deletes all `.DS_Store` files** (useful for macOS users).
2. **Moves all files** from any depth within the directory into the **top-level root** folder.
3. **Removes any empty directories** after flattening is complete.

This results in a single flat folder containing all files, with no subdirectories left.

## Usage

### 1. Set the target directory

By default, the script targets:

```bash
/Users/$USER/flattenFolders
```

To use a different directory, modify this line:

```bash
dir_to_flatten="/path/to/your/folder"
```

### 2. Make the script executable

```bash
chmod +x flatten-to-root
```

### 3. Run the script

```bash
./flatten-to-root
```

## Notes & Tips

- Files are moved using `mv -i`, which **prompts before overwriting** existing files.
- Make a backup if file overwriting could be a risk.
- The script assumes you are happy to delete all empty directories once files are moved.

## Example Folder Structure

### Before

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

### After

```text
flattenFolders/
├── file1.txt
├── file2.txt
└── file3.txt
```

All directories `A`, `B`, `C`, and `subfolder` are removed.
Made with ❤️ by [Karl Horning](https://github.com/Karl-Horning)
