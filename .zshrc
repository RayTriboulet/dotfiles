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

export ZSH="/home/trib/.oh-my-zsh"
ZSH_THEME="agnoster"

# export GOPATH=$HOME/gowork

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/MMM/yyyy"

plugins=(
         git
         colored-man-pages
#        tmux
#        vundle
         gitflow
         github
#        bundler
#        tmuxinator
         zsh-autosuggestions  # for zsh-autosuggestions see https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
	web-search           # for web-search info see https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search
	vi-mode
	brew
	command-not-found
)

source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/bin:$PATH"

# Custom Aliases
# today() {
#   echo -n "Today's date is: "
#   date +"%A, %B %-d, %Y"
# }

# cpa() {
#   ~/bin/back_n_forth
# }

# alias vimgo='vim -u ~/.vimrc.go'

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
