# File Zipper Script

This PowerShell script is designed to zip all files in a specified folder individually, excluding any `.zip` files. The zipped files are placed into a subfolder named `output` within the source directory.

## Prerequisites

- Windows 10 or higher
- PowerShell 5.1 or higher

## Setup and Configuration

1. **Specify Source Directory**: Open the script in a text editor and replace the path in `$sourceDirectory` with the path to your folder containing the files you wish to zip.

    ```powershell
    $sourceDirectory = "C:\Path\To\Your\Folder"
    ```

2. **Permissions**: Ensure that you have read permissions for the folder containing the files and write permissions for the folder where the zip files will be stored.

## Running the Script

To run the script, follow these steps:

1. Open PowerShell.
2. Navigate to the directory containing the script.
3. Execute the script by typing `.\zip_files.ps1` (assuming the script is named `zip_files.ps1`).

## Output

The script will create a new directory named `output` within your specified source directory if it does not already exist. Each file in the source directory (excluding any `.zip` files) will be zipped individually and the corresponding `.zip` file will be placed in the `output` folder.

## Features

- **Individual Zipping**: Each file is zipped individually to maintain organization.
- **Exclusion of Zip Files**: Already zipped files are automatically excluded to avoid redundancy.
- **Automated Folder Creation**: The `output` folder is created automatically if it does not exist.

## Troubleshooting

- **Permission Errors**: If you encounter permission errors, make sure that your user account has the appropriate permissions for the folders involved.
- **File Not Found**: Ensure that the path specified in `$sourceDirectory` is correct and accessible.

## License

This script is released under the MIT License.

## Author

Henry Chan
