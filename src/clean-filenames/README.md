# `clean-filenames`

A Bash script to tidy up filenames in a folder by removing **leading, trailing**, and **excess internal spaces**.

## What it does

Given a target directory (default: `/Users/$USER/flattenFolders`), the script iterates over each file (non-recursively), uses `sed` to strip unwanted whitespace, and renames each file only if a change is needed.

## Example

Before:

```text
"  report   final   .txt"
" notes.txt"
"presentation   v1.pptx"
```

After:

```text
"report final .txt"
"notes.txt"
"presentation v1.pptx"
```

## Usage

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
chmod +x clean-filenames.sh
```

### 3. Run it

```bash
./clean-filenames.sh
```

## Notes

- Only processes files — directories are ignored.
- Non-recursive: only the immediate contents of the folder are affected.
- Filenames with special characters (quotes, `*`) may need additional handling.
