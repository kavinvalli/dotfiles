local pluginConfs = require "custom.plugins.configs"
local M = {}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["williamboman/mason.nvim"] = pluginConfs.mason,
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
    ["numToStr/Comment.nvim"] = pluginConfs.comment,
    ["NvChad/ui"] = pluginConfs.ui,
  },
}

M.ui = {
  theme = "tokyodark",
}

M.mappings = require("custom.mappings")

return M
