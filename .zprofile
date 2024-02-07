eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"

alias vi="nvim"
alias la="exa --long -la"
alias ll="exa --long -ll"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias tn="tmux new -s \$(basename \$(pwd))"
alias tl='tmux ls'
alias trn='tmux rename-session'
alias tk='tmux kill-session'

