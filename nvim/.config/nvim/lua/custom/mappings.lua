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
    },
    ["J"] = {"mzJ`z"},
    ["<C-d>"] = {"<C-d>zz"},
    ["<C-u>"] = {"<C-u>zz"},
    ["n"] = {"nzzzv"},
    ["N"] = {"Nzzzv"},
  },
  v = {
    ["<tab>"] = {">gv"},
    ["<S-tab>"] = {"<gv"},
    [">"] = {">gv"},
    ["<"] = {"<gv"},
    ["J"] = {":m '>+1<CR>gv=gv"},
    ["K"] = {":m '<-2<CR>gv=gv"}
  },
  x = {
    ["<leader>p"] = {"\"_dP"}
  }
}

M.neogit = {
  n = {
    ["<leader>g"] = {":Neogit<CR>", "Neogit"}
  }
}

M.telescope = {
  plugin = true,
  n = {
    ["<leader>fp"] = {"<cmd> Telescope file_browser <CR>", "file browser"},
  }
}

M.harpoon = {
  n = {
    ['ma'] = {":lua require(\"harpoon.mark\").add_file()<CR>", "Harpoon Add file"},
    ['m1'] = {":lua require(\"harpoon.ui\").nav_file(1)<CR>", "Navigate Harpoon 1"},
    ['m2'] = {":lua require(\"harpoon.ui\").nav_file(2)<CR>", "Navigate Harpoon 2"},
    ['m3'] = {":lua require(\"harpoon.ui\").nav_file(3)<CR>", "Navigate Harpoon 3"},
    ['m4'] = {":lua require(\"harpoon.ui\").nav_file(4)<CR>", "Navigate Harpoon 4"},
    ['m5'] = {":lua require(\"harpoon.ui\").nav_file(5)<CR>", "Navigate Harpoon 5"},
    ['m6'] = {":lua require(\"harpoon.ui\").nav_file(6)<CR>", "Navigate Harpoon 6"},
    ['m7'] = {":lua require(\"harpoon.ui\").nav_file(7)<CR>", "Navigate Harpoon 7"},
    ['m8'] = {":lua require(\"harpoon.ui\").nav_file(8)<CR>", "Navigate Harpoon 8"},
    ['m9'] = {":lua require(\"harpoon.ui\").nav_file(9)<CR>", "Navigate Harpoon 9"},
    ['<leader>h'] = {":lua require(\"harpoon.ui\").nav_file(1)<CR>", "Navigate Harpoon 1"},
    ['<leader>j'] = {":lua require(\"harpoon.ui\").nav_file(2)<CR>", "Navigate Harpoon 2"},
    ['<leader>k'] = {":lua require(\"harpoon.ui\").nav_file(3)<CR>", "Navigate Harpoon 3"},
    ['<leader>l'] = {":lua require(\"harpoon.ui\").nav_file(4)<CR>", "Navigate Harpoon 4"},
    ['mv'] = {":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", "Harpoon menu"},
  }
}

-- M.undotree = {
--   n = {
--     ['ut'] = {":UndotreeToggle<CR>", "Toggle Undo Tree"}
--   }
-- }
--
return M
