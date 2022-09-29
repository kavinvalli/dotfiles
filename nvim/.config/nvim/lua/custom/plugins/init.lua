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

  ["nvim-treesitter/nvim-treesitter-context"] = {},

  ['folke/which-key.nvim'] = {
    disable = false,
  },

  ['goolord/alpha-nvim'] = {
    disable = false,
  },

  -- ['kosayoda/nvim-lightbulb'] = {
  --   requires = 'antoinemadec/FixCursorHold.nvim',
  --   config = function()
  --     require('nvim-lightbulb').setup({autocmd = {enabled = true}})
  --   end,
  -- },

  ['JoosepAlviste/nvim-ts-context-commentstring'] = {
    config = function()
      require'nvim-treesitter.configs'.setup {
        context_commentstring = {
          enable = true,
          enable_autocmd = false
        }
      }
    end
  },

  -- ["github/copilot.vim"] = {},

  -- ["nvim-telescope/telescope-file-browser.nvim"] = {
  --   requires = {{"nvim-telescope/telescope.nvim"}},
  --   config = function()
  --     require("telescope").load_extension "file_browser"
  --   end
  -- },
  --
  -- ["nvim-orgmode/orgmode"] = {
  --   config = function()
  --     require('orgmode').setup()
  --     require('orgmode').setup_ts_grammar()
  --   end
  -- }
  --
  ['gpanders/editorconfig.nvim'] = {},
}

return M
