
" ============= Vim-Plug Setup (Auto Install vim-plug) ============== "{{{
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
"}}}

call plug#begin(expand('~/.config/nvim/plugged'))

" ================= looks and GUI stuff ================== "{{{
Plug 'ryanoasis/vim-devicons'                           " pretty icons everywhere
Plug 'luochen1990/rainbow'                              " rainbow parenthesis
" Plug 'hzchirs/vim-material'                             " material color themes
Plug 'gregsexton/MatchTag'                              " highlight matching html tags
Plug 'Jorengarenar/vim-MvVis'                           " move visual selection
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'hoob3rt/lualine.nvim'
Plug 'romgrk/doom-one.vim'
"}}}

" ================ Tree =================================== "{{{
Plug 'kyazdani42/nvim-tree.lua'
"}}}

" ================ Telescope plugins ====================== "{{{
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"}}}

" ================= Functionalities ================= "{{{

Plug 'neoclide/coc.nvim', {'branch': 'release'}                           " LSP and more
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                       " fzf itself
Plug 'junegunn/fzf.vim'                                                   " fuzzy search integration
Plug 'honza/vim-snippets'                                                 " actual snippets
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}                    " better python
Plug 'tpope/vim-commentary'                                               " better commenting
Plug 'mhinz/vim-startify'                                                 " cool start up screen
Plug 'psliwka/vim-smoothie'                                               " some very smooth ass scrolling
Plug 'wellle/tmux-complete.vim'                                           " complete words from a tmux panes
Plug 'tpope/vim-eunuch'                                                   " run common Unix commands inside Vim
" Plug 'machakann/vim-sandwich'                                             " make sandwiches
Plug 'christoomey/vim-tmux-navigator'                                     " seamless vim and tmux navigation
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }  " preview markdown files
Plug 'jiangmiao/auto-pairs'                                               " brackets auto pairing
Plug 'kyazdani42/nvim-web-devicons'                                       " web devicons
Plug 'romgrk/barbar.nvim'                                                 " tabs
Plug 'folke/which-key.nvim'
Plug 'tyru/open-browser.vim'
Plug 'andweeb/presence.nvim'                                              " discord presence
Plug 'aquach/vim-http-client'
"}}}

" ================= Git Intergration ============== " {{{
Plug 'tpope/vim-fugitive'                                                 " git support
Plug 'tpope/vim-rhubarb'                                                  " hub support
Plug 'junegunn/gv.vim'                                                    " git commit browser
"}}}

" ================= LSP Functions ================= "{{{
Plug 'yuezk/vim-js'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'watzon/vim-edge-template'
Plug 'dag/vim-fish'
Plug 'jparise/vim-graphql'
Plug 'pantharshit00/vim-prisma'
"}}}

call plug#end()
