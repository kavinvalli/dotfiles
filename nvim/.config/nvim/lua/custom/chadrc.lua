local pluginConfs = require "custom.plugins.configs"
local M = {}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["williamboman/mason.nvim"] = pluginConfs.mason,
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
    ["numToStr/Comment.nvim"] = pluginConfs.comment,
  },
}

M.ui = {
  theme = "falcon",
  transparency = true,
  hl_override = {
    Visual = {
      bg = "#525252"
    }
  },
  statusline = {
    separator_style = "block",
  },
}


M.mappings = require("custom.mappings")

return M
