
# Simple Dotfiles

This is a simple dotfiles and scripts I use for customizing macOS.

## What are dotfiles?

Dotfiles are configuration files on Unix-based systems. At first they are just hidden configuration files of the system (that's why the reason for starting with "."). However, we can use them to make it easier to configure our computers, with many advantages:

* Easy to format a new computer;
* Automation of tasks;
* Easy maintenance;
* Storage in remote locations (GitHub, Dropbox, etc);
* Versioning;
* Import to multiple computers.


## What's in it? Features?
_Check linked files to more details_

### Settings Files:

* [Aliases](.alias) - all system aliases.
* [Bash Profile](.bash_profile) - terminal configs.
* [Functions](.functions) - custom functions to perform certain tasks with more practicality. Eg: extract files.
* [Gitconfig](.gitconfig) - basic git settings.
* [Gitignore](.gitconfig) - global gitignore.
* [Inputrc](.inpurc) - terminal typing configs.

### Installation files:

* [Brew.sh](install/brew.sh) - installs Homebrew, Cask, Homebrew Cask Upgrade and some basic app's.
* [Dock.sh](install/dock.sh) - dock customization.
* [macOS.sh](install/macos.sh) - macOS defaults configs.
* [Setup.sh](install/setup.sh) - main installer.
* [Util.sh](install/util.sh) - support functions for other installers.
* [Vscode.sh](install/vscode.sh) - VSCode plugins installer.

_Note: These files may be discarded later._

### Others files:

* [Setting.json](vscode/setting.json) - VSCode customization.


## Installation:

```
$ bash -c "$(curl -fsSL https://raw.github.com/samuelramox/dotfiles/master/install/setup.sh)"
```

Alternative:
```
$ git clone https://github.com/samuelramox/dotfiles.git
$ cd ~/dotfiles
$ chmod +x install/setup.sh
$ ./install/setup.sh
$ rm -rf ~/dotfiles
```

## Resources:

* [Dotfiles Repositories](https://dotfiles.github.io/)
* [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)

## TODO:




