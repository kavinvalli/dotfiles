hi Pmenu guibg='#00010a' guifg=white                    " popup menu colors
hi Comment gui=italic cterm=italic                      " italic comments
hi Search guibg=#b16286 guifg=#ebdbb2 gui=NONE          " search string highlight color
hi NonText guifg=bg                                     " mask ~ on empty lines
hi clear CursorLineNr                                   " use the theme color for relative number
set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾
hi CursorLineNr gui=bold                                " make relative number bold
hi SpellBad guifg=NONE gui=bold,undercurl               " misspelled words

" colors for git (especially the gutter)
hi DiffAdd  guibg=#0f111a guifg=#43a047
hi DiffChange guibg=#0f111a guifg=#fdd835
hi DiffRemoved guibg=#0f111a guifg=#e53935

" coc multi cursor highlight color
hi CocCursorRange guibg=#b16286 guifg=#ebdbb2
" let g:material_style = 'palenight'
set background=dark

" let g:tokyonight_style="night"
" let g:tokyonight_transparent_sidebar=v:true
" let g:tokyonight_dark_sidebar=v:false
let g:tokyodark_transparent_background=1
" let g:rose_pine_disable_background = v:true
" let g:rose_pine_variant = 'moon'
colorscheme nord

highlight NvimTreeFolderIcon guifg=#eb6f92
autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
            \ |    highlight LineNr     ctermbg=NONE guibg=NONE
            \ |    highlight SignColumn ctermbg=NONE guibg=NONE
