Find `$installers` in `src/installer_applications` and add more objects to install.

## Edit `$installers` for installing applications

```ps1
`src/install_applications.ps1`

$installers = @(
    [PSCustomObject]@{
        URL = "https://download.mozilla.org/?product=firefox-latest&os=win&lang=en-US"
        destionationPath = "$SetupFolderPath\firefox_setup.exe"
        name = "Firefox"
    }
    # Add more `$installer` objects
)
```


## `$installer` object body


```ps1
    [PSCustomObject]@{
        URL = "https://download.mozilla.org/?product=firefox-latest&os=win&lang=en-US"
        destionationPath = "$SetupFolderPath\firefox_setup.exe"
        name = "Firefox"
}
```

## `$installer` Fields

```ps1
URL = # the url where the setup is downloaded automatically on call
```
```ps1
destinationPath = # where do you wanna store the downloaded source hopefully in `$SetupFolderPath/your_name.exe`
```
```ps1
name = # the name of the downloaded application
```