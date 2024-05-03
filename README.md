# setup-windows
#### This is a project for my windows system and windows sandbox

## Install Applications Automatically
Find `$installers` in `src/installer_applications` and add more objects to install.

### Table of Content:
- `$installers` a list of `$installer`
- `$installer` object body
- `$installer` Fields

#### See `/src/install_applications.md` for detailed docummentation of the `$installers`.


### Preview: Edit `$installers` for installing applications


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
