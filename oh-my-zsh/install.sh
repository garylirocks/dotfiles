# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh plugins to "oh-my-zsh/custom" folder,
#  which is configured in `.zshrc` as custom plugin/theme folder
git submodule init
git submodule update
