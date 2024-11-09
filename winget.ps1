winget list -q Python.Python.3.8 | Out-Null
if (! $?) {
    $adm = Read-Host "Do you want to install Python 3.8 for all users (recommended) ? ('yes'|*)"
    not-an-error-do-not-skip
    do {
        if ($adm -eq 'yes') {
            winget install -e --id Python.Python.3.8 -s winget --override "/passive InstallAllUsers=0 Include_doc=0 Include_tcltk=0"
        } else {
            winget install -e --id Python.Python.3.8 -s winget --override "/passive InstallAllUsers=1 Include_doc=0 Include_tcltk=0"
        }
    } until ($?)

}

py -3.8 -m pip install --upgrade pip
while (! $?) { py -3.8 -m pip install --upgrade pip }

py -3.8 -m pip install 'cython<3' wheel
while (! $?) { py -3.8 -m pip install 'cython<3' wheel }

py -3.8 -m pip install "pyyaml==5.4.1" --no-build-isolation
while (! $?) { py -3.8 -m pip install "pyyaml==5.4.1" --no-build-isolation }

py -3.8 -m pip install bcml==3.10.4
while (! $?) { py -3.8 -m pip install bcml==3.10.4 }

$(New-Object -ComObject WScript.Shell).CreateShortcut("[Environment]::GetFolderPath('StartMenu')\Programs\BCML.lnk").TargetPath = "py -3.8 -m bcml"

# if (! $(Get-Command -Name bcml)) {
    # [Environment]::SetEnvironmentVariable()
# }

Write-Host 'Everything is correctly installed, to launch BCML, enter "py -3.8 -m bcml" on a command promt or use the shortcut in your program list'