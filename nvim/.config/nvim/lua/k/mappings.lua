local g = vim.g
local map = require('k.utils').map
local silent_noremap = {silent = true, noremap = true}

g.mapleader = ","

-- Normal mode
-- map('n', '<leader>q', ':bd<CR>', silent_noremap)
map('n', ';', ':', { noremap = true })

-- Better window movements
map('n', '<C-h>', '<C-w>h', silent_noremap)
map('n', '<C-j>', '<C-w>j', silent_noremap)
map('n', '<C-k>', '<C-w>k', silent_noremap)
map('n', '<C-l>', '<C-w>l', silent_noremap)

-- Insert mode

-- Exit insert mode
map('i', 'jk', '<esc>', silent_noremap)
map('i', 'Jk', '<esc>', silent_noremap)
map('i', 'jK', '<esc>', silent_noremap)
map('i', 'JK', '<esc>', silent_noremap)
