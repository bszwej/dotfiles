# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="powerlevel9k/powerlevel9k"

DEFAULT_USER=$(whoami)

export EDITOR=vim
plugins=(git docker sbt scala kubectl zsh-syntax-highlighting common-aliases zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# Export default PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# Load custom user scripts
export PATH="$PATH:$HOME/.custom-scripts"

# Load exercism
export PATH="$PATH:$HOME/Tools/exercism"

# Powerlevel9k config
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vcs dir)
export POWERLEVEL9K_DISABLE_RPROMPT=true

# alt + s = sudo
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

# Aliases
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward

alias temp='cd $(mktemp -d)'
alias hg='history | grep'
alias cpa='pwd | pbcopy'

alias kc='kubectl'
kca () { kubectl "$@" --all-namespaces }

alias di='docker images'
alias dp='docker ps'

export KUBECONFIG=~/Tools/ysf-kubeconfig

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

