
DIR=`readlink -f $(dirname $0)`

echo "Install custom oh-my-zsh theme"

ln -s --force $DIR/gary.zsh-theme ${HOME%%/}/.oh-my-zsh/custom/themes/gary.zsh-theme
ln -s --force $DIR/server.zsh-theme ${HOME%%/}/.oh-my-zsh/custom/themes/server.zsh-theme

echo "Install zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
