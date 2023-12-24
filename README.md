# Personal Emacs Configuration (org mode)
This is my constantly evolving Emacs configuration.
I am using an org mode file to provide my configuration.

# Summary

## File editing
- Use [Evil](https://www.emacswiki.org/emacs/Evil) mode to provide an editing environment that mimimcks the [Vim](https://www.vim.org/) editor.

## Input Completion
- Use [ido]() and [icomplete]() modes to handle completing items in the minibuffer

## Text Completion
- *TODO!*

## Programming Language Support
- *TODO!*

# Installation
To install the configuration on your system, clone this repository and then link the configuration directory `./home/.emacs.d` into your home directory.
Directions are listed below for Unix and Windows systems.

## Requirements
Emacs 29 or greater.

## For Linux, macOS, wsl
Backup any existing Emacs configuration before you install this new one.

### Clone the repository

```sh
$ cd ~
$ git clone https://github.com/mrxcitement/dot-emacs-org.git ~/github/mrxcitement/dot-emacs-org
```

### Install the config files

```sh
$ cd ~/github/mrxcitement/dot-emacs-org
$ ./install
```

## For Windows OS: (Windows 10 or greater with powershell installed)

### Clone the repository from github.

```powershell
> cd /d %userprofile%
> git clone https://github.com/mrxcitement/dot-emacs-org.git %userprofile%/github/mrxcitement/dot-emacs-org
```

### Install the config files
(Note: To LINK the files you need to "Run As" an Administrator.)

```powershell
> cd /d %userprofile%/github/mrxcitement/dot-emacs-org
> .\install.ps1
```
