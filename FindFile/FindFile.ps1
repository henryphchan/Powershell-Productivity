# .\FindFile.ps1 -fileName "yourSearchFile.txt"
param (
    [string]$fileName = "defaultFileName.txt"
)
Get-ChildItem -Path C:\ -Recurse -ErrorAction SilentlyContinue -Force | Where-Object { $_.Name -like "*$fileName*" } | ForEach-Object { Write-Output $_.FullName }