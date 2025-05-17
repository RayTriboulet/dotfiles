alias \
\
c="clear" \
# v="nvim" \ # requires neovim
f="fff" \
# cat="bat" \ # requires bat install
l="ls -lh --color=auto --group-directories-first" \
ls="ls -h --color=auto --group-directories-first" \
la="ls -lah --color=auto --group-directories-first" \
grep="grep --color=auto" \
shell="exec $SHELL -l" \
fk="sudo !!" \
mv="mv -i" \
rm="rm -Iv" \
df="df -h" \
du="du -h -d 1" \
k="killall" \
p="ps aux | grep $1" \

# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
