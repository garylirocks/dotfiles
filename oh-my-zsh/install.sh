#!/bin/env bash

# install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# install zsh plugins to "oh-my-zsh/custom" folder,
#  which is configured in `.zshrc` as custom plugin/theme folder
git submodule init
git submodule update
