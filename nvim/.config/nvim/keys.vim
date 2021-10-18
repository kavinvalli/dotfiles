" ======================== Essentials ========================= "{{{
let mapleader=","
nnoremap ; :
nmap \ <leader>q
map <F6> :Startify <CR>
nmap <leader>R :so ~/.config/nvim/init.vim<CR>
nmap <leader>r :so %<CR>
nmap <leader>q :bd<CR>
nmap <leader>w :w<CR>
map <leader>s :Format<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
noremap <leader>e :PlugInstall<CR>
noremap <C-q> :q<CR>
inoremap jk <Esc>
map <Enter> o<ESC>
map <S-Enter> O<ESC>
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
noremap <silent><esc> <esc>:noh<CR><esc> " disable hl with two escapes
nnoremap <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR> " trim white space
"}}}

" ======================== Window Management ========================= "{{{
nnoremap <leader>w\| :vsplit<CR>
nnoremap <leader>w- :split<CR>
nnoremap <leader>w= <-w>=
nnoremap <leader>w+ <C-w>\|
nnoremap <leader>w_ <C-w>_
nnoremap <leader>wR <C-w>R
nnoremap <leader>wv <C-w>t<C-w>H
nnoremap <leader>wh <C-w>t<C-w>K
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
noremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <A-Left> :vertical resize +3<CR>
nnoremap <A-Right> :vertical resize -3<CR>
nnoremap <A-Up> :resize +3<CR>
nnoremap <A-Down> :resize -3<CR>
"}}}

" ======================== Fuzzy Search ========================= "{{{
nnoremap <silent> <leader>p :lua require("telescope.builtin").find_files({ find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' } })<CR>
nnoremap <silent> <leader>f :Telescope current_buffer_fuzzy_find<CR>
nmap <leader>c :Telescope commands<CR>
" nmap <leader>/ :Telescope live_grep<CR>
nmap <leader>/ :lua require("telescope.builtin").live_grep({ vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u', '--hidden' } })<CR>
nmap <leader>sh :Telescope command_history<CR>
nmap <F1> <plug>(fzf-maps-n)
imap <F1> <plug>(fzf-maps-i)
vmap <F1> <plug>(fzf-maps-x)
"}}}

" ======================== Git ========================= "{{{
nmap <leader>gcs :Commits<CR>
nmap <leader>gd :Gdiffsplit<CR>
nmap <leader>gb :Git blame<CR>
nmap <leader>ga. :Git add<Space>
nmap <leader>gap :Git add -p<CR>
nmap <leader>gaa :Git add --all<CR>
nmap <leader>gs :Telescope git_status<CR>
nmap <leader>gcm :Git commit -m "
nmap <leader>gp. :Git push<Space>
nmap <leader>gpl. :Git pull<Space>
nmap <leader>gpo. :Git push origin<Space>
nmap <leader>gplo. :Git pull origin<Space>
nmap <leader>gpom :Git push origin master<CR>
nmap <leader>gplom :Git pull origin master<CR>
nmap <leader>g/ :GBrowse<CR>
nmap <leader>g, :! cd (pwd) && gh repo view --web <CR>
"}}}

" ======================== Tmux Navigation ========================= "{{{
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
"}}}

" ======================== Nvim Tree ========================= "{{{
nnoremap <silent> <C-b> :NvimTreeToggle<CR>
nnoremap <leader>tr :NvimTreeRefresh<CR>
nnoremap <leader>tf :NvimTreeFindFile<CR>
"}}}

" ======================== Buffer ========================= "{{{
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
nnoremap <silent>    <A-g> :BufferPin<CR>
nnoremap <silent>    <A-c> :BufferClose<CR>
nnoremap <silent>    <C-s> :BufferPick<CR>
nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>
"}}}

" ======================== Browser ========================= "{{{
nmap <silent> <leader>bu <Plug>(openbrowser-open)
vmap <silent> <leader>bu <Plug>(openbrowser-open)

nmap <silent> <leader>bw <Plug>(openbrowser-search)
vmap <silent> <leader>bw <Plug>(openbrowser-search)

nmap <silent> <leader>bb <Plug>(openbrowser-smart-search)
vmap <silent> <leader>bb <Plug>(openbrowser-smart-search)

nmap <silent> <leader>b. :OpenBrowserSmartSearch<Space>
"}}}

" ======================== Custom Scripts ========================= "{{{
nmap <silent> <leader>kc :! tmux neww cht<CR>
nmap <silent> <leader>kps :! tmux neww fish -c "passfzf -s"<CR>
" nmap <silent> <leader>kpi :! tmux neww fish -c "passfzf -i"<CR>
"}}}

au FileType markdown nmap <leader>m :MarkdownPreview<CR>


