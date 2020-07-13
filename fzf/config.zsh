
if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh

    # use rg for default file listing, which will exclude files ignored by .gitignore
    export FZF_DEFAULT_COMMAND='rg --files'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

    cc() {
        local quickDirs=~/drop/config/quickDirs.txt
        local dir=`cat $quickDirs | fzf --height 10 --layout reverse | sed "s|~|$HOME|"`
        cd $dir
    }
fi

