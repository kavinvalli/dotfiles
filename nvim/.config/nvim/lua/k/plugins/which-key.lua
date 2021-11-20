local wk = require("which-key")

local mappings = {
  q = { ":bd<CR>", "Quit Buffer" },
  x = { ":wq<CR>", "Write and quit" },
  w = {
    name = "Window",
    ['|'] = { ":vsplit<CR>", "Vertical Split" },
    ['-'] = { ":split<CR>", "Horizontal Split" },
    ['='] = { "<C-w>=", "Balance Splits" },
    ['+'] = { "<C-w>|", "Max out vertical split" },
    ['_'] = { "<C-w>_", "Max out horizontal split" },
    R = { "<C-w>R", "Swap panes" },
    h = { "<C-w>t<C-w>K", "Switch to horizontal pane" },
    v = { "<C-w>t<C-w>H", "Switch to vertical pane" },
  },
  t = {
    name = "Nvim Tree",
    r = { ":NvimTreeRefresh<CR>", "Refresh" },
  },
  p = {
    name = "Telescope",
    p = { ":lua require(\"telescope.builtin\").find_files({ find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' } })<CR>", "Find Files" },
    f = { ":Telescope current_buffer_fuzzy_find<CR>", "Find in file"},
    c = { ":Telescope commands<CR>", "Find commands"},
    l = { ":Telescope file_browser<CR>", "File browser"},
    m = { ":Telescope man_pages<CR>", "Man Pages"},
    g = {
      name = "Git",
      cs = {":Telescope git_commits<CR>", "Commits"},
      cb = {":Telescope git_bcommits<CR>", "Buffer's commits"},
      b = {":Telescope git_branches<CR>", "Branches"},
      s = {":Telescope git_status<CR>", "Status"},
    },
  },
  ["/"] = {
    ":lua require(\"telescope.builtin\").live_grep({ vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u', '--hidden' } })<CR>",
    "Find in project"
  },
}
local opts = { prefix = "<leader>" }

vim.api.nvim_set_keymap("v", "<Leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<Leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<Leader>rt", [[ <Esc><Cmd>lua require('k.plugins.refactoring').refactors()<CR>]], {noremap = true, silent = true, expr = false})

wk.register(mappings, opts)
