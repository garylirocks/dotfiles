# ============================
# dotfiles
# ============================
if [[ -d ~/.dotfiles/_bin ]]; then
  export PATH="$HOME/.dotfiles/_bin:$PATH"
fi


# ============================
# yarn
# ============================
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


# ============================
# python tools, pip, etc
# ============================
export PATH="$HOME/.local/bin:$PATH"


# ============================
# misc
# ============================
if [[ -d "${ZSH_LOCAL}/bin" ]]; then
  export PATH="${ZSH_LOCAL}/bin:$PATH"
fi
