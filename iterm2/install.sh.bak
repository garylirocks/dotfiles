#!/bin/bash

FOLDER="$HOME/.dotfiles/iterm2/preferences"

echo 'set preferences folder to ' $FOLDER

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string $FOLDER

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

