
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
_Check linked files to more details._

### Settings Files:

* [aliases](.aliases) - all system aliases.
* [bash_profile](.bash_profile) - terminal configs.
* [functions](.functions) - custom functions to perform certain tasks with more practicality. Eg: extract files.
* [git-completion](.git-completion) - auto complete Git commands.
* [gitconfig](.gitconfig) - basic git settings.
* [gitignore_global](.gitignore_global) - global gitignore.
* [inputrc](.inpurc) - terminal typing configs.

### Installation files:

* [brew.sh](install/brew.sh) - installs Homebrew, Cask, Homebrew Cask Upgrade and some basic apps.
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

The setup.sh process will:
1. Download the files on your computer and create directory _.dotfiles_.

2. Check if the _XCode Command Line Tools_ is installed and install the same if it does not exist.

3. Open [gitconfig](.gitconfig) so that the user can put his data.

4. Create symbolic links between _.dotfiles_ and _home/_.

5. Give a source in [bash_profile](.bash_profile).

6. Ask if you want to install the following scripts, in this order:

**Note**: I suggest you read these files and turn your preferences on/off before installation.
Before each script, an editor opens to configure your preferences.

- [brew.sh](install/brew.sh) - install Homebrew, Cask, Cask Upgrade and applications.
I suggest you comment apps that should not be installed and include those that are not listed. This script will install in the following order:

    - Homebrew;
    - Homebrew apps;
    - Homebrew Cask;
    - Cask apps;
    - Homebrew Cask Upgrade;
    - Mac App Store command line interface;
    - Mac App Store apps;

- [macos.sh](install/macos.sh) - set custom macOS preferences.
- [dock.sh](install/dock.sh) - set custom permanent apps in Dock. _Finder_ and _Recycle Bin_ are already permanent (unless you change this).
- [vscode.sh](install/vscode.sh) - create a symbolic link in the custom VSCode [setting.json](vscode/setting.json) and install some plugins.

7. Create a directory called Projects in Home directory for projects and development.

---


## Mackup
After installing dotfiles and configuring macOS, it is interesting to use _Mackup_ for backup application settings in some cloud service. _Mackup_ supports
Dropbox (default), Google Drive, iCloud, and other services that synchronize folders.
Using _Mackup_, your settings will be synchronized in the cloud and you can restore and use them on other computers.
It is simple to use:

```
# Install Mackup
brew install mackup

# Backup your application settings.
mackup backup

# Restore your application settings on a newly installed workstation.
mackup restore
```
Checkout the [documentantion](https://github.com/lra/mackup) for more details.


**Note**: Mackup also syncs some dotfiles, but I'd rather leave them in the repository, in favor of practicality and interoperability.

---


## Resources:

* [Dotfiles Repositories](https://dotfiles.github.io/)
* [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
* [Homebrew](https://brew.sh/)
* [Homebrew Cask](https://caskroom.github.io/)
* [Homebrew Cask Upgrade](https://github.com/buo/homebrew-cask-upgrade)
* [Mac App Store command line interface](https://github.com/mas-cli/mas)
* [Quick Look plugins](https://github.com/sindresorhus/quick-look-plugins)
* [Dockutil](https://github.com/kcrawford/dockutil)
* [Sensible macOS defaults](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)
* [Awesome OSX Command Line](https://github.com/herrbischoff/awesome-osx-command-line)
* [Git Completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash)
* [Mackup](https://github.com/lra/mackup)





