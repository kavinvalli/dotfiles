local wk = require("which-key")

local mappings = {
  q = { ":bd<CR>", "Quit Buffer" },
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
  p = { ":lua require(\"telescope.builtin\").find_files({ find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' } })<CR>", "Find Files" },
  f = { ":Telescope current_buffer_fuzzy_find<CR>", "Find in file"},
  c = { ":Telescope commands<CR>", "Find commands"},
  ["/"] = {
    ":lua require(\"telescope.builtin\").live_grep({ vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u', '--hidden' } })<CR>",
    "Find in project"
  },
}
local opts = { prefix = "<leader>" }

wk.register(mappings, opts)
