# FindFile PowerShell Script

## Overview
The `FindFile.ps1` PowerShell script is designed to help users search for files across their entire `C:` drive that match a specified filename pattern. This script is particularly useful for locating files when you're unsure of their exact names or locations.

## Features
- **Deep Search:** Recursively searches through all subdirectories of the `C:` drive.
- **Wildcard Support:** Allows the use of wildcards to specify flexible filename patterns.
- **Silent Operation:** Errors, particularly those related to inaccessible directories, are handled silently to ensure smooth execution.
- **Visibility:** Can access and return hidden or system files.

## Prerequisites
- Windows Operating System
- PowerShell 5.1 or higher

## Usage
To use this script, you must provide a filename or a pattern using the `-fileName` parameter. You can include wildcards (`*`) in your pattern to increase the flexibility of your search.

### Syntax
```powershell
.\FindFile.ps1 -fileName "<filename_pattern>"
```

## Examples
### Exact Filename Search:
```
.\FindFile.ps1 -fileName "example.txt"
```
This command searches for all files exactly named example.txt.

### Wildcard Search:
```
.\FindFile.ps1 -fileName "*example*.txt"
```
This command searches for any files that include example in their filename, with any characters before or after example, and ending with .txt.

### Extension Search:
```
.\FindFile.ps1 -fileName "*.txt"
```
This command finds all files with the .txt extension.

### Default Search:
```
.\FindFile.ps1
```
Without specifying a file name, the script searches for files named defaultFileName.txt by default.

## Note
- The script might take a considerable amount of time to complete, especially on drives with a large number of files or complex directory structures.
- Make sure you run PowerShell with sufficient permissions, especially if you are trying to access restricted directories.