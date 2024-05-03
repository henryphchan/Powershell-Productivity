# Define the source directory where the files to be zipped are located
$sourceDirectory = "C:\Path\To\Your\Folder"

# Define the output directory where the zip files will be stored
$outputDirectory = Join-Path -Path $sourceDirectory -ChildPath "output"

# Create the output directory if it does not exist
if (-Not (Test-Path -Path $outputDirectory)) {
    New-Item -ItemType Directory -Path $outputDirectory
}

# Get all files in the source directory, excluding .zip files
$files = Get-ChildItem -Path $sourceDirectory -File | Where-Object { $_.Extension -ne ".zip" }

# Loop through each file and zip it individually
foreach ($file in $files) {
    $zipFilePath = Join-Path -Path $outputDirectory -ChildPath ($file.BaseName + ".zip")
    Compress-Archive -Path $file.FullName -DestinationPath $zipFilePath
    Write-Host "Created zip file: $zipFilePath"
}

Write-Host "All files have been zipped successfully!"
