# My Emacs Configuration
This is my constantly evolving Emacs configuration.
This version uses org mode and bable to manage my configuration in one large org file.

# Requirements
Emacs 24 or greater.

# Installation
To install the configuration on your system, clone this repository and then run install to link the emacs configuration folder to your home directory.

## For Unix style OS: (Linux/Mac OS X/etc.)
Make sure to backup your emacs configuration before you install this new one.

### Clone the repository
```sh
$ mkdir ~/github
$ cd ~/github
$ git clone https://github.com/mrxcitement/dot-emacs-org.git
```

### Install the config files
```sh
$ cd ~/github/dot-emacs-org
$ ./install
```

## For windows based OS: (Windows XP or greater with MKLINK available)
*Note: To use MKLINK you need to be in a command prompt "Run As" an Administrator.*

### Clone the repository from github.
```cmd
> mkdir %USERPROFILE%\github
> cd /d %USERPROFILE%\github
> git clone https://github.com/mrxcitement/dot-emacs-org.git
```

### Link the emacs configuration directory.
```cmd
> cd /d %USERPROFILE%\github\dot-emacs-org
> .\install.cmd
```
