# get Application from URL and install them silently.


$TempFolderPath = "C:\temp"
$SetupFolderPath = "$TempFolderPath\.setup"


# Create Folders
New-Item -ItemType Directory -Path $TempFolderPath -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Path $SetupFolderPath -ErrorAction SilentlyContinue


$installers = @(
    [PSCustomObject]@{
        URL = "https://download.mozilla.org/?product=firefox-latest&os=win&lang=en-US"
        destionationPath = "$SetupFolderPath\firefox_setup.exe"
        name = "Firefox"
    }
    # Add more objects as needed
) 

function Install-Setup-Silent{
    param (
        [string]$path
    )

    if (Test-Path $path) {
        Write-Output "Silently installing $($installer.URL) ..."
        Start-Process -FilePath $path -ArgumentList "/S" -Wait
    } else {
        Write-Warning "EXE file not found: $path"
    }
}


Write-Host "INFO: Starting script execution..."
Write-Host "INFO: Destination Folder $($SetupFolderPath)"


foreach ($installer in $installers) {
    Write-Host "INFO: installing  $($installer.name) ..."
    
    Invoke-WebRequest -Uri $installer.URL -OutFile $installer.destionationPath

    Install-Setup -Path $installer.destionationPath

    Write-Host "INFO: Installed $($installer.name) succesfully..."
}


if (-not $?) {
    # Output error message
    Write-Error "An error occurred."
} else {
    # Write more information to the console
    Write-Host "INFO: Script executed successfully."
}