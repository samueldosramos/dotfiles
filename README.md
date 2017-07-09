
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

* [aliases](.aliases) - all system aliases.
* [bash_Profile](.bash_profile) - terminal configs.
* [functions](.functions) - custom functions to perform certain tasks with more practicality. Eg: extract files.
* [gitconfig](.gitconfig) - basic git settings.
* [gitignore](.gitconfig) - global gitignore.
* [inputrc](.inpurc) - terminal typing configs.

### Installation files:

* [brew.sh](install/brew.sh) - installs Homebrew, Cask, Homebrew Cask Upgrade and some basic app's.
* [dock.sh](install/dock.sh) - dock customization.
* [macos.sh](install/macos.sh) - macOS defaults configs.
* [setup.sh](install/setup.sh) - main installer.
* [util.sh](install/util.sh) - support functions for other installers.
* [vscode.sh](install/vscode.sh) - VSCode plugins installer.

_Note: These files may be discarded later._

### Others files:

* [setting.json](vscode/setting.json) - VSCode customization.


## Installation:

```
$ bash -c "$(curl -fsSL https://raw.github.com/samuelramox/dotfiles/master/install/setup.sh)"
```

---

### Explaining the process

1. The above command will download the files and create a home folder named _.dotfiles_. The main installer is setup.sh, which will call all others.

2. It will check if the _XCode Command Line Tools_ is installed and install the same if it does not exist.

3. Then it will open [gitconfig](.gitconfig) so that the user can put his data.

4. It will then open [brew.sh](install/brew.sh)  to select the applications that will be installed. I suggest you comment apps that should not be installed and include those that are not listed. After this [brew.sh](install/brew.sh)  will install in the following order:

- Homebrew;
- Homebrew apps;
- Homebrew Cask;
- Cask apps;
- Homebrew Cask Upgrade;

5. In the next step, the script will create symbolic links (hidden) between _.dotfiles_ and _home/_ folder.

6. Then it will give a source in [bash_Profile](.bash_profile) and ask if you want to install the following scripts, in this order:

**Note**: I suggest you read these files and turn your preferences on / off before installation.

- [macos.sh](install/macos.sh) - will set up macOS. 
- [dock.sh](install/dock.sh) - will configure the permanent apps in Dock. _Finder_ and _Recycle Bin_ are already permanent (unless you change this).
- [vscode.sh](install/vscode.sh) - will create a symbolic link in the VSCode [setting.json](vscode/setting.json) and then install some plugins.

---

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




