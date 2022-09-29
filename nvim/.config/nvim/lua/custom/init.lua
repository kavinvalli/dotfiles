vim.cmd("autocmd BufNewFile,BufRead *.astro set filetype=astro")

vim.opt.relativenumber = true
vim.opt.grepprg = 'rg --ignore-case --vimgrep'
vim.opt.grepformat = '%f:%l:%c:%m,%f:%l:%m'
vim.opt.autoindent = true

vim.opt.wrap = false
vim.opt.linebreak = true -- Break lines by spaces or tabs

vim.opt.hlsearch = false

vim.opt.writebackup = false
vim.opt.updatetime = 300
vim.opt.timeoutlen = 100

-- vim.cmd [[ :set notimeout nottimeout ]]
