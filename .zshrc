# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="powerlevel9k/powerlevel9k"

DEFAULT_USER=$(whoami)

plugins=(git docker sbt)

source $ZSH/oh-my-zsh.sh

# User configuration

# Export default PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# Load custom user scripts
export PATH="$PATH:$HOME/.custom-scripts"

# Powerlevel9k config
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vcs dir)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)

# alt + s = sudo
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

# Aliases
alias c="clear"
alias notes="atom $HOME/Dropbox/notes"

alias g=git
alias gaa='git add --all'
alias gco='git checkout'
alias gcam='git commit -a -m'
alias gl='git pull'
alias ggpull='git pull origin $(git_current_branch)'
alias gp='git push'
alias ggpush='git push origin $(git_current_branch)'
alias gfa='git fetch --all --prune'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gcb='git checkout -b'
alias gsb='git status -sb'

bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

