"""""""""""""""""""""""""""""""""""""""""""""""""
"""           ^^^^^^^^^^^^^^^^^^^^            """
"""                                           """
"""           myVIMrc by Triboulet            """
"""                                           """
"""           ^^^^^^^^^^^^^^^^^^^^            """
"""""""""""""""""""""""""""""""""""""""""""""""""

" TEST-SCRIPT

set nocompatible                            " Fix for old vi bugs
execute pathogen#infect()
                                            " https://github.com/tpope/vim-pathogen
set encoding=utf-8                          " International chars
set modelines=0                             " Turns off modelines
set history=500                             " Default is 20!
set undolevels=100                          " Should not need more
set ruler                                   " To see current column
set number                                  " Show line numbers
set showcmd                                 " Show command in bottom bar
set visualbell                              " Visual error warnings
set noerrorbells                            " No audible beeps on error
set nocursorline                            " Don't highlight current line
set wildmenu                                " set bash-style tab-completion
set autoread                                " Reread if changes are written
set laststatus=2                            " Keeps status line visible
set scrolloff=4                             " 4 lines margin when scrolling
set shortmess=ilmwxs                        " See :help shortmess
filetype on                                 " Language specific enable
filetype indent on                          " Language specific indenting
filetype plugin on                          " Language specific plugins
colorscheme molokai                         " Popular dark theme
set nofoldenable                            " No code-folding
syntax enable
set nohlsearch                              " Don't highlight search results
set ignorecase                              " Ignore case-sensitive
set smartcase                               " If cap in search, don't ignore
set incsearch                               " Inclusive searching
set showmatch                               " Highlight matching {},[],()
set listchars=tab:▸▸,nbsp:∙,trail:.,eol:¬   " Unwanted whitespace
set list                                    " Show non-characters
set tabstop=2                               " 2 space tab
set expandtab                               " Use spaces for tabs
set softtabstop=2                           " 2 space tab
set shiftwidth=2
set autoindent
set columns=80                              " 80 Columns == good practice
highlight ColorColumn ctermbg=magenta
                                            " EOL color
call matchadd('ColorColumn', '\%81v', 100)  " 81st line for color

" Unmap the arrow keys {
  no <down> <Nop>
  no <left> <Nop>
  no <right> <Nop>
  no <up> <Nop>
  ino <down> <Nop>
  ino <down> <Nop>
  ino <right> <Nop>
  ino <up> <Nop>
" }

" put git status, column/row number, total lines, and percentage in status
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]

highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1
" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif

" set leader key to comma
let mapleader = ","

" Powerline {
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" }
