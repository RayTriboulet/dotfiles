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

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:home/ariovistus/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# Custom Aliases
today() {
  echo -n "Today's date is: "
  date +"%A, %B %-d, %Y"
}

cpa() {
  ~/bin/back_n_forth
}
