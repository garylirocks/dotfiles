
DIR=`readlink -f $(dirname $0)`

echo "Install custom oh-my-zsh theme"

ln -s $DIR/gary.zsh-theme ${HOME%%/}/.oh-my-zsh/custom/themes/gary.zsh-theme
