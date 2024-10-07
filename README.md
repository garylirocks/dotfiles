# dotfiles

## Overview

This is forked from `holman/dotfiles`

Main customizations I have done:

- Added various topic folders
- Added `ubuntu-setup` (TODO: clean up)
- Added `windows-setup` folder
- Added `mac-setup` folder
- Submodules for `oh-my-zsh` plugins


## To start

- Install tools

  ```sh
  script/install
  ```

  Every `<topic>/install.sh` file is executed to install each tool. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.

  *The scripts were created for Linux (Ubuntu), some may not work for other Linux distributions, or Mac, list the install.sh scripts, and try run and fix each*

- Create symlinks

  ```sh
  script/bootstrap
  ```

  Every `<topic>/<file-name>.symlink` gets linked to home directory as `~/.<file-name>`. E.g. `zsh/zshrc.symlink` gets linked to `~/.zshrc`.


## Components

There's a few special files in the hierarchy.

- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
  - **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
  - **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](https://caskroom.github.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.