# ==============================================================================
# 1. ENVIROMENT PATHS & UNIVERSAL COMPATIBILITY
# ==============================================================================
export HISTFILE="$HOME/.zsh_history"        # Universal fallback path for saving shell command history
export HISTSIZE=50000                       # Max active session events stored in real-time memory
export SAVEHIST=50000                       # Total continuous history log entries preserved on disk
export HISTCONTROL=ignoreboth               # Ignore exact sequential duplicates or commands launched with spaces

# ==============================================================================
# 2. CORE SHELL BEHAVIORAL OPTIONS (SETOPT)
# ==============================================================================
setopt autocd                               # Drop into a directory instantly just by typing its path name
setopt auto_param_slash                     # Append a trailing slash automatically to tab-completed directories
setopt auto_menu                            # Present an interactive completion choice block upon a double tab
setopt menu_complete                        # Cycle through parameters cleanly on repeated tab invocation
setopt globdots                             # Include hidden dotfiles automatically in search parameter expansions
setopt extended_glob                        # Enable advanced character sorting syntax like #, ~, and ^ patterns
setopt interactive_comments                 # Permit active comment strings beginning with # inside the live shell
setopt no_case_glob                         # Force file pattern generations to run case-insensitive
setopt no_case_match                        # Enforce case-insensitivity on internal regular expression checks
setopt append_history                       # Append session parameters to history file on exit without wiping log
setopt inc_append_history                   # Inject individual instructions into disk log instantly upon firing
setopt share_history                        # Share commands instantly across all open running terminal tabs
unsetopt prompt_sp                          # Terminate automatic formatting corrections on messy output lines

# ==============================================================================
# 3. INTERACTIVE TAB COMPLETION SETTINGS
# ==============================================================================
zmodload zsh/complist                       # Inject terminal grid rendering module to display graphical lists
autoload -U compinit && compinit -i         # Initialize tab completions silently ignoring unsecure ownerships
autoload -U colors && colors                # Initialize standard ancestral core console ANSI tint dictionaries

zstyle ':completion:*' menu select          # Force interactive grid layout selection menu when using tabs
zstyle ':completion:*' special-dirs true    # Force literal current (.) and parent (..) directory strings to show
zstyle ':completion:*' squeeze-slashes false # Do not collapse multiple inline path slashes during tab expansions

export LS_COLORS="di=32:ln=35:ex=31:fi=0"   # Core green directory system colors for ls operations
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=46\;30 
                                            # Invert matching menu choice fields to neon green blocks

# ==============================================================================
# 4. UNIFIED EXTERNAL ALIAS MANAGEMENT
# ==============================================================================
[ -f "$HOME/.bash_aliases" ] && source "$HOME/.bash_aliases"

# ==============================================================================
# 5. KEYBOARD MAP RE-BINDINGS (TERMINAL CONTROLS)
# ==============================================================================
stty stop undef                             # Terminate active lock screens caused by hitting Ctrl+S accidentally
bindkey -e                                  # Force baseline standard Emacs terminal movement standard parameters
bindkey "^a" beginning-of-line              # Move cursor instantly to the front boundary of current command string
bindkey "^e" end-of-line                    # Jump cursor instantly to the end boundary of the active instruction
bindkey "^k" kill-line                      # Delete character array completely from cursor point to line terminus
bindkey "^[b" backward-word                 # Move cursor backward exactly one word segment (Alt + Left)
bindkey "^[f" forward-word                  # Move cursor forward exactly one word segment (Alt + Right)
bindkey "^[[A" history-search-backward      # Arrow UP recalls past actions sharing matched string prefixes
bindkey "^[[B" history-search-forward       # Arrow DOWN steps downward across historical search results

# ==============================================================================
# 6. RETRO 1990S MATRIX GREEN USER PROMPT
# ==============================================================================
PROMPT='%F{22}[%D{%H:%M}] %F{46}%n%F{22}@%F{46}%m %F{22}[%F{46}%~%F{22}] %F{10}❯%f '
