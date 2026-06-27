# ==============================================================================
# 1. NON-INTERACTIVE GUARD & SYSTEM RESTRICITONS
# ==============================================================================
case $- in
    *i*) ;;                                 # If running interactively, proceed downward with settings
    *) return;;                             # If running non-interactively via automated scripts, exit early
esac

# ==============================================================================
# 2. CONTINUOUS DATA HISTORY MANAGEMENT
# ==============================================================================
export HISTFILE="$HOME/.bash_history"       # Universal backup path for saving execution logs to disk
export HISTSIZE=50000                       # Maximum history event actions retained in system memory
export HISTFILESIZE=50000                   # Total historical records safely kept inside the storage block
export HISTCONTROL=ignoreboth               # Ignore duplications and commands starting with blank space filters
shopt -s histappend                         # Force runtime sequences to append to disk instead of destroying log

# ==============================================================================
# 3. UNIFIED EXTERNAL ALIAS MANAGEMENT
# ==============================================================================
[ -f "$HOME/.bash_aliases" ] && source "$HOME/.bash_aliases"

# ==============================================================================
# 4. RETRO 1990S MONOCHROMATIC BASH INTERACTIVE PROMPT
# ==============================================================================
export PS1='\[\e[38;5;22m\][\t] \[\e[38;5;46m\]\u\[\e[38;5;22m\]@\[\e[38;5;46m\]\h \[\e[38;5;22m\][\[\e[38;5;46m\]\w\[\e[38;5;22m\]] \[\e[38;5;10m\]❯\[\e[0m\] '
