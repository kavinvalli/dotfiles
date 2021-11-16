local opt = vim.opt

-- Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.autoindent = true
opt.expandtab = true

-- Buffers
opt.hidden = true -- Buffer switching without saving

-- Search
opt.ignorecase = true -- Case insensitive search
opt.smartcase = true -- But sensitive if includes capital letter
opt.grepprg = 'rg --ignore-case --vimgrep'
opt.grepformat = '%f:%l:%c:%m,%f:%l:%m'

-- UI
opt.wrap = false
opt.linebreak = true -- Break lines by spaces or tabs

opt.termguicolors = true

opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.showmode = false

opt.showtabline=2

opt.list = true
opt.listchars = {
  nbsp = '⦸', -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
  tab = '  ',
  extends = '»', -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
  precedes = '«', -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
  trail = '·', -- Dot Operator (U+22C5)
}
-- Show cool character on line wrap
opt.showbreak = '↳ ' -- DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
opt.fillchars = {
  eob = ' ', -- Suppress ~ at EndOfBuffer
  fold = ' ', -- Hide trailing folding characters
}

-- opt.cursorline = true -- Highlight current line

-- UX
opt.mouse = 'a' -- Enable mouse usage
opt.splitright = true -- Open new split to the right
opt.splitbelow = true -- Open new split below
opt.whichwrap = opt.whichwrap + 'h,l,<,>,[,]'
opt.hlsearch = false

opt.fileencoding = 'utf-8'

-- Integration with the system clipboard
opt.clipboard = { 'unnamed', 'unnamedplus' }

-- Navigation
opt.scrolloff = 5 -- Lines to scroll when cursor leaves screen
opt.sidescrolloff = 3 -- Lines to scroll horizontally
opt.suffixesadd = { '.md', '.js', '.ts', '.tsx' } -- File extensions not required when opening with `gf`

-- Backups
opt.writebackup = false
opt.updatetime = 300
opt.timeoutlen = 100
