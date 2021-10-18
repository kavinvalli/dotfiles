set termguicolors                                       " Opaque Background
set mouse=a                                             " enable mouse scrolling
set clipboard+=unnamedplus                              " use system clipboard by default
set tabstop=2 softtabstop=2 shiftwidth=2 autoindent     " tab width
set expandtab smarttab                                  " tab key actions
set incsearch ignorecase smartcase hlsearch             " highlight text while searching
set list listchars=trail:»,tab:»-                       " use tab to navigate in list mode
set fillchars+=vert:\▏                                  " requires a patched nerd font (try FiraCode)
set wrap breakindent                                    " wrap long lines to the width set by tw
set encoding=utf-8                                      " text encoding
set number                                              " enable numbers on the left
set relativenumber                                      " current line is 0
set title                                               " tab title as file name
set noshowmode                                          " dont show current mode below statusline
set noshowcmd                                           " to get rid of display of last command
set conceallevel=2                                      " set this so we wont break indentation plugin
set splitright                                          " open vertical split to the right
set splitbelow                                          " open horizontal split to the bottom
set tw=90                                               " auto wrap lines that are longer than that
set emoji                                               " enable emojis
set history=1000                                        " history limit
set backspace=indent,eol,start                          " sensible backspacing
set undofile                                            " enable persistent undo
set undodir=/tmp                                        " undo temp file directory
set foldmethod=marker foldlevel=0                       " Fold all comments
set inccommand=nosplit                                  " visual feedback while substituting
set showtabline=0                                       " always show tabline
set grepprg=rg\ --vimgrep                               " use rg as default grepper
" autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
"             \ |    highlight NormalNC     ctermbg=NONE guibg=NONE
"             \ |    highlight LineNr     ctermbg=NONE guibg=NONE
"             \ |    highlight SignColumn ctermbg=NONE guibg=NONE
"             \ |    highlight ColorColumn ctermbg=None guibg=None

" performance tweaks
set nocursorline
set nocursorcolumn
set scrolljump=5
set lazyredraw
set redrawtime=10000
set synmaxcol=180
set re=1
