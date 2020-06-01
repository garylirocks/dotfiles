
if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh

    cc() {
        local quickDirs=~/drop/config/quickDirs.txt
        local dir=`cat $quickDirs | fzf --height 10 --layout reverse | sed "s|~|$HOME|"`
        cd $dir
    }
fi

