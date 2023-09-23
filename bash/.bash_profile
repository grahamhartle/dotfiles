eval "$(/opt/homebrew/bin/brew shellenv)"
export BASH_SILENCE_DEPRECATION_WARNING=1

# Aliases
alias la='eza -laFGh'
alias cat='bat'
alias tree='tree -C'
alias pipl='python3 -m pip list'
alias pipins='python3 -m pip install '

# Powerline setup 
export PATH=$PATH:$HOME/Library/Python/3.11/bin/
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/graham/Library/Python/3.11/lib/python/site-packages/powerline/bindings/bash/powerline.sh

. "$HOME/.cargo/env"
