eval "$(/opt/homebrew/bin/brew shellenv)"

if [ -f /opt/homebrew/share/bash-completion/bash_comletion ]; then
    . /opt/homebrew/share/bash-completion/bash_completion
fi


# History
export HISTCONTROL=ignoredups:ignorespace
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTFILE="~/.bash_history"
shopt -s histappend

# Options
shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s nocaseglob
shopt -s nocasematch
set -o vi

# Exports
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export EDITOR="hx"
export VISUAL="hx"
export MANPAGER="nvim +Man!"
export INPUTRC="~/.inputrc"
export PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"

# Aliases
source ~/.config/bash/aliasrc

# Starship prompt
eval "$(starship init bash)"

# Zoxide
eval "$(zoxide init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source ~/.local/share/blesh/ble.sh
