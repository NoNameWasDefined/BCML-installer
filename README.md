# Simple BCML (BOTW Cross-Platform Mod Loader)

## Before installing

[BCML](https://github.com/NiceneNerd/BCML/ "Github repo") was superseded by [UKMM](https://github.com/NiceneNerd/UKMM/ "Github repo") which is more simple to install but since the version 3.10.5 of BCML (and UKMM of course) : compatibility with older mods was removed.  
**BCML only work on Python version 3.7 and 3.8**  
This script will install [BCML version 3.10.4](https://pypi.org/project/bcml/3.10.4/ "PyPI project page") on Python 3.8, do not use it if all the mods are working in UKMM.

## Installation

I made some scripts to install it but I recommend to run yourself the commands

### Windows with Pip no PipX/Venv

> _Install PipX if you plan to use Python 3.8 for others use with pip : ``pip install pipx``  
  But keep in mind that PipX follow Linux directory structure  
  also Venv can be used but it will be too complicated to launch BCML_

  You also need the latest **Visual C++ Redistributable** for your computer so if you do not installed it yet, you can install with these links (permanent):

- [ARM64](https://aka.ms/vs/17/release/vc_redist.arm64.exe)
- [x64](https://aka.ms/vs/17/release/vc_redist.x64.exe)
- [x86](https://aka.ms/vs/17/release/vc_redist.x86.exe)

Install Python 3.8 without Tk/tcl for space and without adding it to your PATH because now Python 3.8 is now deprecated. Full example with Winget (set `InstallAllUsers` to 1 if another user plan to do something, possibly the same, in BCML):  
``winget install -e --id Python.Python.3.8 -s winget --override '/passive InstallAllUsers=0 Include_doc=0 Include_tcltk=0'``

1. **OPTIONAL:** Upgrade pip  
``py -3.8 -m pip install --upgrade pip``

2. If you want you can use [PipX](https://pipx.pypa.io/stable/installation/ "Installation - PipX docs") to install BCML, see below

3. > Since some problems occurs when installing PyYAML (a dependency of BCML) we have to download its dependencies manually  
``py -3.8 -m pip install 'cython<3.10.4' wheel``  
``pip install "pyyaml==5.4.1" --no-build-isolation``

4. Install BCML with pip  
  ``py -3.8 -m pip install bcml==3.10.4``

5. **RECOMMENDED:** Create a shortcut in your Start Menu :

    - CMD: ``SHORTCUT -t "py -3.8 -m bcml" -d %%``
    - PowerShell: ``$(New-Object -ComObject WScript.Shell).CreateShortcut("[Environment]::GetFolderPath('StartMenu')\Programs\BCML.lnk")``

### Linux with PipX

> On Linux PipX is highly recommended, Venv can be used also but a containerized environment is recommended

1. Install Python 3.8 and PipX

    - From APT :  
  Add [ppa:deadsnakes/ppa](https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa "Link to the Launchpad project") with `add-apt-repository`, update APT and install `python3.9` and `python3-pipx`

    - From Pacman and the AUR :  
  Install [`python39`](https://aur.archlinux.org/packages/python39 "AUR page") (AUR) and `python-pipx` (Archlinux)

    - Search on the Web how to install (sorry). For PipX see the [PipX docs](https://pipx.pypa.io/stable/installation/) for how to install PipX on your distro

2. Setup BCML on PipX  
``pipx install bcml==3.10.4 --preinstall cython<3 --preinstall wheel --python python3.8``

### MacOS

Sorry, I do not use Apple's products, if someone can translate the instruction for MacOS, please make an issue.

## Scripts

> Manual installation is recommended

These scripts work for these distro and their derivates

### Debian

``curl https://github.com/NoNameWasDefined/BCML-installer/apt.sh | bash``

### Archlinux

``curl https://github.com/NoNameWasDefined/BCML-installer/aur.sh | bash``

### Not already made Scripts

Fell free to post any script for any distro you made
