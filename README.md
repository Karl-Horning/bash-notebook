# Bash Notebook Cheatsheet

---

## Table of Contents

- [Bash Notebook Cheatsheet](#bash-notebook-cheatsheet)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Basic Navigation](#basic-navigation)
  - [File \& Directory Operations](#file--directory-operations)
  - [Variables](#variables)
  - [Conditionals](#conditionals)
  - [Loops](#loops)
  - [Functions](#functions)
  - [Test Operators](#test-operators)
  - [Useful One-Liners](#useful-one-liners)
  - [Exit Codes](#exit-codes)
  - [Script Template](#script-template)
  - [Licence](#licence)
  - [Author](#author)

---

## Overview

A collection of handy Bash syntax, commands, and examples. For learning, quick reference, and scripting!

---

## Basic Navigation

```bash
pwd              # Print working directory
ls               # List files
ls -la           # Long format with hidden files
cd foldername    # Change directory
cd ..            # Go up one directory
```

---

## File & Directory Operations

```bash
touch file.txt                 # Create an empty file
mkdir myfolder                 # Create a directory
rm file.txt                    # Delete a file
rm -r folder                   # Delete a directory and contents
cp file.txt backup.txt         # Copy file
mv old.txt new.txt             # Rename or move file
```

---

## Variables

```bash
name="Karl"
echo "Hello $name"
```

---

## Conditionals

```bash
if [ "$name" == "Karl" ]; then
  echo "Hi Karl"
else
  echo "Who are you?"
fi
```

---

## Loops

```bash
# For loop
for i in {1..5}; do
  echo "Loop $i"
done

# While loop
count=1
while [ $count -le 5 ]; do
  echo "Count is $count"
  ((count++))
done
```

---

## Functions

```bash
greet() {
  echo "Hello, $1!"
}

greet "Karl"
```

---

## Test Operators

```bash
[ -f file.txt ]     # File exists
[ -d mydir ]        # Directory exists
[ -z "$var" ]       # String is empty
[ "$a" -eq "$b" ]   # Numbers equal
```

---

## Useful One-Liners

```bash
grep "word" file.txt           # Search for "word"
cat file.txt | less            # Page through a file
find . -name "*.sh"            # Find all .sh files
chmod +x script.sh             # Make script executable
head -n 10 file.txt            # First 10 lines
tail -f logs.txt               # Follow file live
```

---

## Exit Codes

```bash
echo $?   # Shows the exit code of the last command
```

---

## Script Template

```bash
#!/bin/bash

# Script to greet the user
name="$1"
echo "Hello, $name!"
```

Make it executable:

```bash
chmod +x myscript.sh
./myscript.sh Karl
```

---

## Licence

MIT © 2025 Karl Horning

---

## Author

Made with ❤️ by [Karl Horning](https://github.com/Karl-Horning)
