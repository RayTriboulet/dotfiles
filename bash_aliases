# ==============================================================================
# 1. CORE NAVIGATION & ENVIROMENT ALIASES
# ==============================================================================
alias c="clear"                             # Clear terminal viewport array back to a fresh display canvas
alias f="fff"                               # Launch fast minimalist terminal file manager framework binary
alias shell="exec $SHELL -l"                # Hot-reload active terminal instance profile layout mappings

# ==============================================================================
# 2. CROSS-PLATFORM SYSTEM LS SETTINGS (MAC & DEBIAN SAFE)
# ==============================================================================
if [ -x /usr/bin/dircolors ]; then
    alias ls="ls -h --color=auto --group-directories-first"
    alias l="ls -lh --color=auto --group-directories-first"
    alias ll="ls -lha --color=auto --group-directories-first"
    alias la="ls -lah --color=auto --group-directories-first"
else
    alias ls="ls -hG"                       # Native high-contrast color file output lists for macOS hosts
    alias l="ls -lhG"                       # Comprehensive byte detail visibility structures for macOS hosts
    alias ll="ls -lhGa"                     # Absolute complete tree views capturing hidden dotfiles on macOS
    alias la="ls -lhGa"                     # Mirrored geometric fallback layout parameter mapping for macOS
fi

# ==============================================================================
# 3. INTERACTIVE SYSTEM SAFEGUARD UTILITIES
# ==============================================================================
alias grep="grep --color=auto"              # Emphasize text regex lookups with automated color highlights
alias fk="sudo !!"                          # Rapid emergency escalation execution using preceding sequence metrics
alias mv="mv -i"                            # Request validation interaction safety blocks before moves overwrite
alias rm="rm -Iv"                           # Prompt validation confirmation once when destroying three plus files
alias df="df -h"                            # Output mount block boundaries in human-readable notation formats
alias du="du -h -d 1"                       # Trace directory byte weight distributions restricted to depth level 1
alias k="killall"                           # Broad scope process termination execution using process names

# Safely handle argument parameters for tracking current machine process arrays
p() { ps aux | grep -i "$1"; }              # Dynamic case-insensitive target execution tracking filter function

# ==============================================================================
# 4. Randoms
# ==============================================================================
alias wtr="curl wttr.in"                    # weather check
