# Simple Dotfiles

This is a simple dotfiles and scripts I use for customizing macOS.


## What are dotfiles?

Dotfiles are configuration files on Unix-based systems. At first they are just hidden configuration files of the system (that's why the reason for starting with "."). However, we can use them to make it easier to configure our computers, with many advantages:

* Easy to format a new computer;
* Automation of tasks;
* Easy maintenance;
* Storage in remote locations (GitHub, Dropbox, etc);
* Versioning;
* Import to multiple computers;
* Customize the terminal.


## What's in it? Features?
_Check linked files to more details._  
**Note:** _In version **2.0** onwards, **Bash** will be switched to **Zsh**. This was necessary to make the files simpler, in addition, Zsh is a customizable and excellent shell._

### Settings Files:

* [bashrc](.bashrc) - some fallback configs to Terminal.app.
* [gitconfig](.gitconfig) - basic git settings.
* [gitignore_global](.gitignore_global) - global gitignore.
* [zshrc](.zshrc) - terminal configs with aliases, paths, plugins and theme.

### Installation files:

* [brew.sh](install/brew.sh) - installs Homebrew, Cask, Homebrew Cask Upgrade and some basic apps.
* [dock.sh](install/dock.sh) - dock customization.
* [macos.sh](install/macos.sh) - macOS defaults configs.
* [npm.sh](install/npm.sh) - install npm packages.
* [setup.sh](install/setup.sh) - main installer.
* [util.sh](install/util.sh) - support functions for other installers.
* [vscode.sh](install/vscode.sh) - VSCode plugins installer.
* [zsh.sh](install/zsh.sh) - Zsh installer.

**Note:** _These files will be discarded later._  

### Others files:

* [setting.json](vscode/setting.json) - VSCode customization.

---

## Installation:

```
git clone https://github.com/samuelramox/dotfiles.git && cd dotfiles

./install/setup.sh

```
You can also download a specific [release](https://github.com/samuelramox/dotfiles/releases)

### Explaining the process

The setup.sh process will:
1. Check if the _XCode Command Line Tools_ is installed and install the same if it does not exist.

2. Move/replace setting files to _home/_.

3. Open [gitconfig](.gitconfig) so that the user can put his data.

4. Ask if you want to install the following scripts, in this order:

**Note:** I suggest you read these files and turn your preferences on/off before installation.
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

- [zsh.sh](install/zsh.sh) - install Zsh, Oh My Zsh, some Zsh plugins, font Hack Nerd Font, z and set Zsh as a default shell.
- [macos.sh](install/macos.sh) - set custom macOS preferences.
- [dock.sh](install/dock.sh) - set custom permanent apps in Dock. _Finder_ and _Recycle Bin_ are already permanent (unless you change this).
- [vscode.sh](install/vscode.sh) - create a symbolic link in the custom VSCode [setting.json](vscode/setting.json) and install some plugins.
- [npm.sh](install/npm.sh) - install npm packages.

5. Create a directory called Projects in Home directory for projects and development.
**Note:** After setting everything up and logging in to Dropbox, I usually delete the Projects folder in Mac and I create a symbolic link with the Projects folder I have in Dropbox:  

```
rm -rf ~/Projects/
ln -s ~/Dropbox/Projects ~/Projects
```
6.  Remove the installation zip and folder


### Setup after installation

#### Hostname:
If you wish, you can use the following commands to rename your Mac, replacing _newname_ by the desired name.  

```
sudo scutil --set ComputerName "newname"
sudo scutil --set LocalHostName "newname"
sudo scutil --set HostName "newname"
```

#### iTerm2 - Change the color theme:
iTerm → Preferences → Profiles → Colors → Color presets. I use Solarized Dark theme.

#### iTerm2 - Change font:
iTerm → Preferences → Profiles → Text → Change Font. I use Hack Nerd Font with 13px.

#### iTerm2 - Enable word jumps and word deletion, aka natural text selection:
By default, word jumps (option + → or ←) and word deletions (option + backspace) do not work. To enable these, go to:   iTerm → Preferences → Profiles → Keys → Load Preset... → Natural Text Editing

#### Terminal.app - Set Bash as default shell:
**Note:** _Terminal.app has problems with Oh My Zsh configs_  
Terminal → Preferences → Geral → Shells open with → Command (full path) → /bin/bash

#### Visual Studio Code config:
**Note:** _Step needed only if you have skipped the VSCode configuration script_  
Code → Preference → Settings (or CMD + ,)  and add or edit the following values:  
`"terminal.integrated.fontFamily": "Knack Nerd Font"`  
`"terminal.integrated.fontSize": 14`

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


**Note:** Mackup also syncs some dotfiles, but I'd rather leave them in the repository, in favor of practicality and interoperability.  
**Note:** I do not use Mackup anymore. After testing, I came to the conclusion that it causes bug in some things.

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
* [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Powerlevel9k theme for Zsh](https://github.com/bhilburn/powerlevel9k)
* [Nerd Fonts](https://nerdfonts.com/)



