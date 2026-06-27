" ==============================================================================
" 1. SYSTEM BEHAVIOR & FAILSAFES (MAC & DEBIAN COEXISTENCE)
" ==============================================================================
set modelines=0                             " Disable modelines to prevent security exploits in file headers
set history=1500                            " Number of previous commands and search patterns to remember
set undolevels=100                          " Maximum number of changes that can be undone within a buffer
set autoread                                " Automatically re-read files if changed outside of this Vim session
set backspace=indent,eol,start              " Force backspace to work universally across macOS and Linux kernels
set mouse=a                                 " Enable native mouse interaction layer for scrolling and switching
set clipboard=unnamedplus,unnamed           " Fallback clipboard registers to bridge Mac and Debian clipboards

" ==============================================================================
" 2. CORE INTERACTIVE DISPLAY CONFIGURATIONS
" ==============================================================================
set ruler                                   " Show transient line, column, and relative position in bottom right
set number                                  " Show absolute line numbers on the left sidebar display grid
set showcmd                                 " Show incomplete commands and selection sizes in the status area
set visualbell                              " Use a visual screen flash instead of an audible beep for warnings
set noerrorbells                            " Ensure no annoying system audio beeps occur on tracking errors
set wildmenu                                " Enhanced tab-completion menu for command-line mode choices
set laststatus=2                            " Always show the status line, even with only one window open
set scrolloff=4                             " Keep a min of 4 lines visible above/below the cursor when scrolling
set shortmess=ilmwxs                        " Shorten UI messages to avoid 'Press ENTER to continue' prompts
set nofoldenable                            " Keep all code folds open and expanded by default when opening files
set columns=120                             " Lock the terminal display layout width to exactly 120 columns

" ==============================================================================
" 3. SEARCH PARAMETERS & LOGIC REGEX
" ==============================================================================
set ignorecase                              " Case-insensitive search pattern tracking matching parameters
set smartcase                               " Override 'ignorecase' if search pattern contains uppercase letters
set incsearch                               " Highlight search matches dynamically while typing your query
set showmatch                               " Briefly jump to the matching bracket (), [], {} when closed

" ==============================================================================
" 4. WHITESPACE EXTRACTION & TEXT FORMATTING (2-SPACE STANDARD)
" ==============================================================================
filetype plugin indent on                   " Enable file type detection, custom plugins, and automated indentation
syntax on                                   " Turn on syntax highlighting engine using file type rules
set tabstop=2                               " Number of spaces that a physical <Tab> character counts for
set expandtab                               " Convert hit <Tab> keys into spaces dynamically inside the buffer
set softtabstop=2                           " Number of spaces <Tab> counts for while performing editing deletions
set shiftwidth=2                            " Number of spaces used for each step of automated indentation
set autoindent                              " Copy indentation level from the previous line when starting a new one
set listchars=tab:▸▸,nbsp:∙,trail:.,eol:¬   " Define custom characters for displaying invisible whitespace strings
set list                                    " Reveal invisible characters globally using listchars settings

" ==============================================================================
" 5. FILE DETAILS & RENDERING (STATUSLINE FORMAT)
" ==============================================================================
" Configure layout (Filepath, modified flag, read-only flag, type, line, column, total lines, percent)
set statusline=%F%m%r%h%w%=%y\ [%l,%c]\ [%L,%p%%]

" ==============================================================================
" 6. RETRO 1990S MONOCHROMATIC GREEN HIGH-CONTRAST INTERFACE
" ==============================================================================
colorscheme elflord                         " Use Vim's built-in retro dark theme as our baseline palette

" Forces the terminal window background to pure black, and all basic text to matrix green
highlight Normal       ctermbg=black ctermfg=46

" Tweaking interface parts to fit the uniform green/black matrix aesthetic
highlight LineNr       ctermbg=black ctermfg=22 " Dark green line numbers on a black sidebar grid array
highlight StatusLineNC ctermbg=234   ctermfg=22 " Inactive status bar: dim background with faint green text strings
highlight StatusLine   ctermbg=22    ctermfg=46 " Active status bar: deep forest green background with bright green text

" Dynamically change the active status line to a striking reverse-video green block in Insert Mode
au InsertEnter * hi StatusLine ctermfg=0  ctermbg=10
au InsertLeave * hi StatusLine ctermbg=22 ctermfg=46
