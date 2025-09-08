source ~/.config/zsh/zshrc

export PATH="/Library/TeX/texbin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export PATH="$PATH:/Users/graham/.local/share/bin"
export PATH="/Users/graham/ols:$PATH"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/graham/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
