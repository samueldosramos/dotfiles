# macOS Dotfiles

This is a simple and flexible dotfiles and scripts to setup _macOS_.

## Table of Contents

1. [What are dotfiles][]
1. [Features][]
1. [Installation][]
1. [Manual setup][]
1. [Screenshot][]
1. [Resources][]

## What are dotfiles

Dotfiles are configuration files on Unix-based systems. At first they are just hidden configuration files of the system (that's why the reason for starting with `.`). However, we can use them to make it easier to configure our computers, with many advantages:

- Easy to format a new computer
- Automation of tasks
- Easy maintenance
- Storage in remote locations (GitHub, iCloud, Dropbox, etc)
- Versioning
- Import to multiple computers
- Customize the terminal

## Features

_Check linked files to more details._

### Installation files

- [apps.sh][] - installs _Homebrew_, _Homebrew Cask Upgrade_ and some _apps_.
- [dock.sh][] - macOS Dock items customization.
- [dotfiles.sh][] - installs _Oh My Zsh_, _.zshrc_ and _git_ configs.
- [hostname.sh][] - change _hostname_ (MacBook name).
- [macos.sh][] - macOS defaults configs.
- [npm.sh][] - install _npm_ packages.
- [setup.sh][] - main installer.
- [ssh.sh][] - generate _SSH_.
- [user.sh][] - user data to configuration of Git and SSH.
- [util.sh][] - support functions for other installers.

**Note:** _These files will be discarded later._

### Settings Files

- [.gitignore_global][] - global _gitignore_.
- [.zshrc_intel][] - terminal configs with aliases, paths, plugins and theme for Macs with Intel.
- [.zshrc_silicon][] - terminal configs with aliases, paths, plugins and theme for Macs with Apple Silicon.
- [com.googlecode.iterm2.plist][] - [iTerm2][] settings.
- [starship.toml][] - [Starship][] theme settings.

**Note:** _These files are permanent_.

## Installation

```bash
git clone -b personal https://github.com/samuelramox/dotfiles.git && cd dotfiles

./setup.sh
```

**Note:** You can also download a specific [release][].

### Explaining the process

The [setup.sh][] process will open [user.sh][] for you to add your user data. This data is necessary for the configuration and functioning of Git and SSH.

```bash
# - GIT_NAME: name and surname to use in Git settings.
# - GIT_EMAIL: email to use in Git settings.
# - SSH_EMAIL: email to use in SSH settings.
# - HOSTNAME: hostname/computer name (optional, leave empty if you don't want to change).
```

It will then install the following scripts, in this order:

- [apps.sh][] - install _Homebrew_, _Homebrew Cask Upgrade_ and applications.

  - Install [Homebrew][].
  - Homebrew formulas: [curl][], [Git][], [Nano][], [Node][], [PostgreSQL][], [Python][], [Ruby][], [Tree][], [Yarn][], [Zsh][].
  - Homebrew taps: [homebrew/fonts][], [homebrew/drivers][], [homebrew/versions][], [homebrew/command-not-found][].
  - Homebrew casks: [Adguard][], [Beekeeper Studio][], [Dash][], [Google Chrome][], [IINA][], [iStat Menus][], [iTerm2][], [JetBrains Mono][], [Paw][], [PDF Expert][], [qBittorrent][], [Sip][] and [Visual Studio Code][].
  - Install [Homebrew Cask Upgrade][].

- [dotfiles.sh][] - install [Oh My Zsh][], some Zsh plugins, [asdf][], [Starship][] theme, set _iTerm2_ preferences (including [Dracula Theme][]) and set **.gitconfig**.
- [npm.sh][] - install some npm packages.
- [macos.sh][] - set custom macOS preferences.
- [dock.sh][] - install [dockutil][] and set custom permanent apps in Dock. _Finder_ and _Recycle Bin_ are already permanent (unless you change this).
- [ssh.sh][] - Generate _SSH_.
- [hostname.sh][] - Update _hostname_ (MacBook name).
- Create a directory called _Developer_ in _Home_ directory for projects and development.
- Cleanup cached downloads and remove the installation zip and folder.

**Note:** I suggest you read these files and turn your preferences on/off before installation.

## Manual setup

[iTerm2][] settings are changed by [dotfiles.sh][] and it will look the same as [screenshot][], but you can change them manually if you prefer. My [Visual Studio Code][] settings are loaded by the [Settings Sync][], so you will have to change manually or load your settings.

### iTerm2 - Change the color theme

You can use the default theme or switch to your preferred theme. I use [Dracula Theme][].

`iTerm2 → Preferences → Profiles → Colors → Color presets`

### iTerm2 - Change font

You can use the default font or switch to your preferred font. I use [JetBrains Mono][] with 12px.

`iTerm2 → Preferences → Profiles → Text → Change Font`

### iTerm2 - Enable word jumps and word deletion, aka natural text selection

By default, word jumps (`option` + `→` or `←`) and word deletions (`option` + `backspace`) do not work.

`iTerm2 → Preferences → Profiles → Keys → Load Preset... → Natural Text Editing`

### Visual Studio Code - Config

`Code → Preference → Settings (or CMD + ,) and add or edit the following values:`

```json
"editor.fontFamily": "JetBrains Mono",
"editor.fontLigatures": true,
"editor.fontSize": 12,
"terminal.integrated.fontFamily": "JetBrains Mono",
"terminal.integrated.fontSize": 12,
```

### Visual Studio Code - Configurable External Terminal

If you are using [iTerm2][] as a default terminal, you need to configure this in [Visual Studio Code][].

`Code → Preference → Settings (or CMD + ,) and add or edit the following values:`

```json
"terminal.external.osxExec": "iTerm.app",
```

## Screenshot

Default install (can be configured):

![macOS screenshot][]

## Resources

- [Dotfiles Repositories][]
- [Awesome Dotfiles][]
- [Homebrew][]
- [Homebrew Cask Upgrade][]
- [Dockutil][]
- [Sensible macOS defaults][]
- [Awesome OSX Command Line][]
- [Oh My Zsh][]
- [Starship][]
- [Dracula Theme][]

[.gitignore_global]: configs/gitignore_global
[.zshrc_intel]: configs/.zshrc_intel
[.zshrc_silicon]: configs/.zshrc_silicon
[adguard]: https://adguard.com/
[apps.sh]: scripts/apps.sh
[asdf]: https://asdf-vm.com
[awesome dotfiles]: https://github.com/webpro/awesome-dotfiles
[awesome osx command line]: https://github.com/herrbischoff/awesome-osx-command-line
[beekeeper studio]: https://www.beekeeperstudio.io
[com.googlecode.iterm2.plist]: configs/com.googlecode.iterm2.plist
[curl]: https://curl.haxx.se
[dash]: https://kapeli.com/dash
[dock.sh]: scripts/dock.sh
[dockutil]: https://github.com/kcrawford/dockutil
[dotfiles.sh]: scripts/dotfiles.sh
[dotfiles repositories]: https://dotfiles.github.io/
[dracula theme]: https://draculatheme.com
[features]: #features
[git]: https://git-scm.com
[google chrome]: https://www.google.com/chrome/
[homebrew]: https://brew.sh/
[homebrew cask upgrade]: https://github.com/buo/homebrew-cask-upgrade
[homebrew/command-not-found]: https://github.com/Homebrew/homebrew-command-not-found
[homebrew/drivers]: https://github.com/Homebrew/homebrew-cask-drivers
[homebrew/fonts]: https://github.com/Homebrew/homebrew-cask-fonts
[homebrew/versions]: https://github.com/Homebrew/homebrew-cask-versions
[hostname.sh]: scripts/hostname.sh
[iina]: https://iina.io/
[installation]: #installation
[istat menus]: https://bjango.com/mac/istatmenus/
[iterm2]: https://iterm2.com
[jetbrains mono]: https://jetbrains.com/mono
[macos screenshot]: ./images/macOS.jpg 'macOS screenshot with default install'
[macos.sh]: scripts/macos.sh
[manual setup]: #manual-setup
[nano]: https://www.nano-editor.org
[node]: https://nodejs.org/
[npm.sh]: scripts/npm.sh
[oh my zsh]: https://ohmyz.sh
[paw]: https://paw.cloud
[pdf expert]: https://pdfexpert.com
[postgresql]: https://www.postgresql.org
[python]: https://www.python.org
[qbittorrent]: https://www.qbittorrent.org/
[release]: https://github.com/samuelramox/dotfiles/releases
[resources]: #resources
[ruby]: https://www.ruby-lang.org/
[screenshot]: #screenshot
[sensible macos defaults]: https://github.com/mathiasbynens/dotfiles/blob/master/.macos
[settings sync]: https://code.visualstudio.com/docs/editor/settings-sync
[setup.sh]: scripts/setup.sh
[sip]: http://sipapp.io
[starship]: https://starship.rs
[starship.toml]: configs/starship.toml
[ssh.sh]: scripts/ssh.sh
[tree]: http://mama.indstate.edu/users/ice/tree/
[user.sh]: scripts/user.sh
[util.sh]: scripts/util.sh
[visual studio code]: https://code.visualstudio.com
[v3.7]: https://github.com/samuelramox/dotfiles/releases/tag/v3.7
[what are dotfiles]: #what-are-dotfiles
[yarn]: https://yarnpkg.com/
[zsh]: https://www.zsh.org
