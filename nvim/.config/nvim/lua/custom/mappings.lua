local M = {}

M.general = {
  i = {
    ["jk"] = {"<ESC>", "Escape"},
    ["Jk"] = {"<ESC>", "Escape"},
    ["jK"] = {"<ESC>", "Escape"},
    ["JK"] = {"<ESC>", "Escape"},
    ['<C-a>'] = {':!tmux display-popup -E "~/.local/bin/tmux-sessionizer"<CR>', 'TMUX Sessionizer'},
  },
  n = {
    ['<C-a>'] = {':!tmux display-popup -E "~/.local/bin/tmux-sessionizer"<CR>', 'TMUX Sessionizer'},
    ['w|'] = {":vsplit<CR>", "Vertical Split"},
    ['w-'] = {":split<CR>", "Horizontal Split"},
    ['w='] = {"<C-w>=", "Balance Splits"},
    ['w+'] = {"<C-w>|", "Max out vertical split"},
    ['w_'] = {"<C-w>_", "Max out horizontal split"},
    ['wR'] = {"<C-w>R", "Swap panes"},
    ['wh'] = {
      "<C-w>t<C-w>K", "Switch to horizontal pane"
    },
    ['wv'] = {
      "<C-w>t<C-w>H", "Switch to vertical pane"
    }
  },
}

M.lazygit = {
  n = {
    ["<leader>g"] = {":LazyGit<CR>", "Lazy Git"}
  }
}

return M
