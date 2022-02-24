local g = vim.g

local map = require 'k.utils'.map

g.nvim_tree_root_folder_modifier = ':t'
g.nvim_tree_git_hl = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  folder_arrows = 1,
}

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
require'nvim-tree'.setup {
  view = {
    auto_close = true,
    mappings = {
      custom_only = false,
      list = {
        { key = "i", cb = tree_cb("vsplit") },
        { key = "s", cb = tree_cb("split") },
        { key = "t", cb = tree_cb("tabnew") },
      }
    }
  }
}

map('n', '<C-b>', ':NvimTreeToggle<CR>', { silent = true })

-- local tree_view = require "nvim-tree.view"

-- local open = tree_view.open
-- tree_view.open = function()
--   require'bufferline.state'.set_offset(31, 'FileTree')
--   open()
-- end

-- -- tree_view.close = function()
-- --   require'bufferline.state'.set_offset(0, 'FileTree')
-- --   tree_view.close()
-- -- end

-- vim.cmd "au WinClosed * lua nvim_tree_on_close()"

-- function _G.nvim_tree_on_close()
--    require'bufferline.state'.set_offset(0)
--    require'nvim-tree'.toggle()
-- end

