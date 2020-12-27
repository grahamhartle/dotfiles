#!/usr/local/bin/zsh

###############################
# EXPORT ENVIRONMENT VARIABLE #
###############################

export TERM='screen-256color'

# XDG

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/.cache
export TMUX_HOME=$HOME/.config/tmux

# editor

export EDITOR="nvim"
export VISUAL="nvim"

# zsh

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

PYTHONPATH="${PYTHONPATH}:/Library/Frameworks/Python.framework/Versions/3.9/bin"
export PYTHONPATH
