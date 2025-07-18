# 🧼 `clean-filenames`

## 📖 Table of Contents

- [🧼 `clean-filenames`](#-clean-filenames)
  - [📖 Table of Contents](#-table-of-contents)
  - [🤓 Introduction](#-introduction)
  - [📌 What It Does](#-what-it-does)
  - [💡 Example](#-example)
    - [Before](#before)
    - [After](#after)
  - [🛠️ Usage](#️-usage)
    - [1. Set the target directory](#1-set-the-target-directory)
    - [2. Make the script executable](#2-make-the-script-executable)
    - [3. Run it](#3-run-it)
  - [⚠️ Notes \& Tips](#️-notes--tips)

---

## 🤓 Introduction

A Bash script to tidy up file names in a specified folder by removing **leading, trailing**, and **excess internal spaces**. Helps ensure consistent, clean naming — especially useful when dealing with files imported from inconsistent sources (like downloaded archives or shared drives).

---

## 📌 What It Does

Given a target directory (default: `/Users/$USER/flattenFolders`), this script:

1. Checks if the directory exists.
2. Iterates through each **file** in the folder (non-recursively).
3. Uses `sed` to:

   - Trim **leading** and **trailing** spaces
   - Collapse **multiple spaces** into a single space
4. Renames each file only if a change is needed.
5. Prints `"Finished renaming files!"` when done.

---

## 💡 Example

### Before

```text
"  report   final   .txt"
" notes.txt"
"presentation   v1.pptx"
```

### After

```text
"report final .txt"
"notes.txt"
"presentation v1.pptx"
```

---

## 🛠️ Usage

### 1. Set the target directory

By default, the script points to:

```bash
/Users/$USER/flattenFolders
```

To use a different location, edit this line:

```bash
dir_to_flatten="/path/to/your/folder"
```

### 2. Make the script executable

```bash
chmod +x clean-filenames
```

### 3. Run it

```bash
./clean-filenames
```

---

## ⚠️ Notes & Tips

- This script only works on **files** — it ignores directories.
- It only runs on the **immediate contents** of the folder (non-recursive).
- Filenames containing special characters (like quotes or `*`) may require additional handling for full robustness.

---

Made with ❤️ by [Karl Horning](https://github.com/Karl-Horning)
