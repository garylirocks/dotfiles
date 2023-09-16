
if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh

    # use rg for default file listing, which will
    #  - exclude files ignored by .gitignore
    #  - don't ignore hidden files
    #  - but ignore '.git' folder
    export FZF_DEFAULT_COMMAND='rg --files --hidden --glob="!.git/"'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

    # set default options
    # --border   -> show borders
    # --reverse  -> input at top
    export FZF_DEFAULT_OPTS="--border --reverse"

    # A custom function to help jump to a custom list of directories
    cc() {
        # load local specific quick dirs
        if [ -f ~/local/fzf-local-quick-dirs.sh ]; then
            source ~/local/fzf-local-quick-dirs.sh
        fi

        local quickDirs=~/linux_sync/config/quickDirs.txt
        local dir=`echo $LOCAL_FZF_QUICK_DIRS | paste -d '\n' -s $quickDirs - | fzf --height 10 --layout reverse | sed "s|~|$HOME|"`
        cd $dir
    }
fi
