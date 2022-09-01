local pluginConfs = require "custom.plugins.configs"

local M = {
  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- get highlight group under cursor
  ["nvim-treesitter/playground"] = {
    cmd = "TSCaptureUnderCursor",
    config = function()
      require("nvim-treesitter.configs").setup()
    end,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["kdheepak/lazygit.nvim"] = {},

  ["nvim-treesitter/nvim-treesitter-context"] = {
    after = "nvim-treesitter",
    config = function()
      require "custom.plugins.nvim-treesitter-context"
    end
  },
}

return M
