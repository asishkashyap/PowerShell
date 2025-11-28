# Create a directory

New-Item -Path "C:\Users\s\Documents\PowerShell Sessions\PsUseCase\PsUseCase1" -ItemType Directory

#Remove a directory

#Verb-Noun

Remove-Item -Path "C:\Users\s\Documents\PowerShell Sessions\PsUseCase" -Recurse -Force -Confirm

# Create a file 

New-Item -Path "C:\Users\s\Documents\test.tf" -ItemType File 

Add-Content -Path "C:\Users\s\Documents\test1.ps1" -Value "Hello World1"
exit
Add-Content -Path "C:\Users\s\Documents\test.ps1" -Value "Hello Friends 123" # It appends the data

Set-Content -Path "C:\Users\s\Documents\test.ps1" -Value "DevOps Engineers"  # It replaces data

Get-Content -Path "C:\Users\s\Documents\test.ps1"

Get-Command -Verb "Start"
Get-Service
Start-Service "WslInstaller"

# Prompt - I have learned powershell basic concepts like operators, array, hashtable, custom object- suggest some use case or excsercise practice

$fetchedData.name = $newValue




