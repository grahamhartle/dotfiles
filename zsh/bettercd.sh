cd() {
  [[ $# -eq 0 ]] && return
  builtin cd "$@"
}

bettercd() {
  cd $1
  if [ -z $1 ]
  then
    selection="$(la -a | fzf --height 40% --reverse --info hidden --prompt "Please make a selection:")"
    if [[ -d "$selection" ]]
    then
      cd "$selection"
    elif [[ -f "$selection" ]]
    then
      hx "$selection"
    fi
  fi
}

alias cd="bettercd"

