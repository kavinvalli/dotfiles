vim.cmd[[ autocmd BufNewFile,BufRead *.astro set filetype=astro ]]
vim.cmd[[ autocmd BufNewFile,BufRead *.md set filetype=markdown ]]

vim.g.loaded_matchit = 1;

vim.opt.relativenumber = true
vim.opt.grepprg = 'rg --ignore-case --vimgrep'
vim.opt.grepformat = '%f:%l:%c:%m,%f:%l:%m'
vim.opt.autoindent = true

-- -- Fold with markers ({{{ }}})
-- vim.opt.foldmethod = "manual"

vim.opt.wrap = false
vim.opt.linebreak = true -- Break lines by spaces or tabs

-- Indentation: no tabs, 2 spaces
-- Visual length of a tab
vim.opt.tabstop = 2
-- How many spaces are inserted when the <tab> key is pressed
vim.opt.softtabstop = 2
-- How many spaces should autoindent use
vim.opt.shiftwidth = 2
-- When true, inserts spaces when <tab> is pressed
vim.opt.expandtab = true
-- Use same indentation on current line as previous line
vim.opt.autoindent = true
-- Smart indentation for C-like programs
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.writebackup = false

vim.opt.updatetime = 300
vim.opt.timeoutlen = 100

-- Show trailing spaces etc
vim.opt.list = true
vim.opt.listchars = "tab:> ,trail:·,eol:↩,multispace:·,nbsp:+"

-- When a bracket is inserted, briefly jump to the matching one. Even better with Neovide's cursor animations.
vim.opt.showmatch = true

-- Show last command in command line
vim.opt.showcmd = true

-- Don't show -- INSERT -- in command line
vim.opt.showmode = false

-- Highlight current line
vim.opt.cursorline = true

vim.opt.guicursor=""

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
-- vim.cmd [[ set termguicolors ]]
