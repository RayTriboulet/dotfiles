#################################################
#
#  ########    #####   #   #
#       ##    ##       #   #
#      ##       ##     #####
#     ##          ##   #####
#    ##            ##  #   #
#  #######     #####   #   #
#
################################################

export ZSH=/home/ariovistus/.oh-my-zsh
ZSH_THEME="clean"

export GOPATH=$HOME/gowork

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/MMM/yyyy"

plugins=(
         git
         colored-man-pages
         command-not-found
         tmux
         vundle
         gitflow
         github
         brew
         bundler
         tmuxinator
         sudo
         vi-mode
)

export PATH="$HOME/gowork/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$HOME/bin:$HOME/gowork:$PATH"

export GOPATH=$HOME/gowork

source $ZSH/oh-my-zsh.sh

# Custom Aliases
today() {
  echo -n "Today's date is: "
  date +"%A, %B %-d, %Y"
}

cpa() {
  ~/bin/back_n_forth
}

alias vimgo='vim -u ~/.vimrc.go'

# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '
