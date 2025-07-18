# 🗂️ `flatten-subfolders`

## 📖 Table of Contents

- [🗂️ `flatten-subfolders`](#️-flatten-subfolders)
  - [📖 Table of Contents](#-table-of-contents)
  - [🤓 Introduction](#-introduction)
  - [📌 What It Does](#-what-it-does)
  - [🛠️ Usage](#️-usage)
    - [1. Set the directory to flatten](#1-set-the-directory-to-flatten)
    - [2. Make the script executable](#2-make-the-script-executable)
    - [3. Run the script](#3-run-the-script)
  - [⚠️ Notes \& Tips](#️-notes--tips)
  - [📂 Example Folder Structure](#-example-folder-structure)

## 🤓 Introduction

A Bash script to flatten the contents of **nested subdirectories** within each **immediate subfolder** of a specified directory. Files are moved up one level, and empty directories are removed, but the top-level folder structure is preserved.

---

## 📌 What It Does

Given a target directory (default: `/Users/$USER/flattenFolders`), this script:

1. Iterates over each **immediate subfolder**.
2. Moves any files from that subfolder’s nested directories up into the subfolder itself.
3. Deletes any empty directories left behind.

This is useful when you have folders like this:

```text
flattenFolders/
├── ProjectA/
│   └── subfolder1/
│       └── file1.txt
├── ProjectB/
│   └── file2.txt
```

After running the script:

```text
flattenFolders/
├── ProjectA/
│   └── file1.txt
├── ProjectB/
│   └── file2.txt
```

---

## 🛠️ Usage

### 1. Set the directory to flatten

The default directory is:

```bash
/Users/$USER/flattenFolders
```

To change this, edit the following line in the script:

```bash
dir_to_flatten="/Users/$USER/flattenFolders"
```

### 2. Make the script executable

```bash
chmod +x flatten-subfolders
```

### 3. Run the script

```bash
./flatten-subfolders
```

---

## ⚠️ Notes & Tips

- Files are moved using `mv -i`, which prompts before overwriting if a file with the same name exists.
- Make sure to back up any important files in case of accidental overwrites.
- The script **does not** delete files — only moves them and deletes **empty** folders.

---

## 📂 Example Folder Structure

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

---

Made with ❤️ by [Karl Horning](https://github.com/Karl-Horning)
