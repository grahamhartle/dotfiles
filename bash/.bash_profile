eval "$(/opt/homebrew/bin/brew shellenv)"
export BASH_SILENCE_DEPRECATION_WARNING=1

# Aliases
alias la='eza -laFGh'
alias cat='bat'
alias tree='tree -C'
alias pipl='python3 -m pip list'
alias pipins='python3 -m pip install '

# Powerline setup 
export PATH=$PATH:/opt/homebrew/Cellar/python@3.11/3.11.5/bin/
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /opt/homebrew/lib/python3.11/site-packages/powerline/bindings/bash/powerline.sh

# . "$HOME/.cargo/env"
