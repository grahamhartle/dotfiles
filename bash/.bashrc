eval "$(/opt/homebrew/bin/brew shellenv)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# History
export HISTCONTROL=ignoredups:ignorespace
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTFILE="~/.config/bash/.bash_history"
shopt -s histappend

# Options
shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s nocaseglob
shopt -s nocasematch

# Exports
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export EDITOR="hx"
export VISUAL="hx"
export MANPAGER="nvim +Man!"
export INPUTRC="~/.inputrc"

# Aliases
source ~/.config/bash/aliasrc

# Starship prompt
eval "$(starship init bash)"
