let g:which_key_use_floating_win = 1
let g:which_key_hspace = 3
let g:which_key_vertical = 0
let g:which_key_position = 'topleft'
set re=0
set timeoutlen=300

lua << EOF
require("which-key").setup {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ...
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
    spelling = { enabled = true, suggestions = 20 }, -- use which-key for spelling hints
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
  },
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
}

require("which-key").register({
  p = "Search file in project",
  f = "Search in file",
  b = "Search buffer",
  c = "Search commands",
  ["/"] = "Search in files in project",
  sh = "Search commands in history",
  ["[n"] = "Rename",
  j = {
    name = "LSP",
    d = "Definition",
    i = "Implementation",
    r = "References",
    y = "Type Definition",
  },
  w = {
    name = "Window",
    ['|'] = "Vertical Split",
    ['-'] = "Horizontal Split",
    ['='] = "Equal Size Split",
    ['+'] = "Max out vertical split",
    ['_'] = "Max out horizontal split",
    R = "Swap panes",
    h = "switch to horizontal split",
    v = "switch to vertical split",
  },
  g = {
    name = "Git",
    a = "Add",
    ["a."] = "Add",
    aa = "Add all",
    ap = "Add chunks",
    c = "Commit",
    cs = "Commits",
    cm = "Commit with message",
    p = "Push or Pull",
    ["p."] = "Push",
    ["pl."] = "Pull",
    ["po."] = "Push origin",
    ["plo."] = "Pull origin",
    ["pom"] = "Push origin master",
    ["plom"] = "Pull origin master",
    d = "Diff",
    b = "Blame",
    s = "Status",
    ["/"] = "Browse the file at the state (commit)",
    [","] = "Browse the repo",
  },
  b = {
    name = "Browser",
    u = "Open URL",
    w = "Search word / sentence",
    b = "Smart Search URL / word / sentence",
    ["."] = "Search as a vim command"
  },
  t = {
    name = "Nvim Tree",
    r = "Refresh",
    f = "Find file"
  },
  k = {
    name = "Custom Scripts",
    c = "Cheatsheet",
    p = "Pass",
    ps = "Pass Show",
    pi = "Pass Insert"
  },
  q = "Quit",
  o = "Organise Imports",
  r = "Source init.vim"
}, { prefix = "<leader>" })
EOF
