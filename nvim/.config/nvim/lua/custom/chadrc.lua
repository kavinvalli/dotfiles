local pluginConfs = require "custom.plugins.configs"
local M = {}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["williamboman/mason.nvim"] = pluginConfs.mason,
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
  },
}

M.ui = {
  theme = "jellybeans",
}

M.mappings = require("custom.mappings")

return M
