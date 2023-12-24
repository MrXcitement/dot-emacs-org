# Personal Emacs Configuration (org mode)

## Summary
My personal Emacs configuration stored in an org mode file that
provides commentary with my configuration.

[config.org](home/.emacs.d/config.org)

### Requirements
Emacs 26 or greater, best with Emacs 28+
Git, the straight package manager needs this.

## Installation
To install the configuration on your system, clone this repository and
then link the configuration directory `./home/.emacs.d` into your home
directory. Directions are listed below for Linux, macOS, wsl and
Windows systems.

Backup any existing Emacs configuration before you install this new one.

### Clone the repository

#### Linux, macOS or wsl
```sh
$ cd ~
$ git clone https://github.com/mrxcitement/dot-emacs-org.git ./github/mrxcitement/dot-emacs-org
```

#### Windows 10 or greater with powershell installed
```powershell
> cd /d %userprofile%
> git clone https://github.com/mrxcitement/dot-emacs-org.git .\github\mrxcitement\dot-emacs-org
```

### Install
Use the installation script to install the configuration.

#### Linux, macOS or wsl
```sh
$ cd ~/github/mrxcitement/dot-emacs-org
$ ./install
```

#### Windows 10 or greater with powershell installed
Note: To LINK the files you need to "Run As" an Administrator.

```powershell
> cd /d %userprofile%/github/mrxcitement/dot-emacs-org
> .\install.ps1
```
