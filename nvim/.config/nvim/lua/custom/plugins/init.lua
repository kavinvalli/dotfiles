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

  ["TimUntersberger/neogit"] = {
    requires = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim'
    },
    config = function() require("custom.plugins.neogit") end
  },

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
  -- ['gpanders/editorconfig.nvim'] = {},

  ['ThePrimeagen/vim-be-good'] = {},

  ['APZelos/blamer.nvim'] = {
    config = function()
      vim.g.blamer_enabled = 1
    end
  },


  ['ThePrimeagen/harpoon'] = {
    requires = {
      'nvim-lua/plenary.nvim',
    },
  },

  ['christoomey/vim-tmux-navigator'] = {},

  ['akinsho/flutter-tools.nvim'] = {
    requires = 'nvim-lua/plenary.nvim',
    config = function ()
      require("flutter-tools").setup {}
    end
  },

  ['iamcco/markdown-preview.nvim'] = {
    run = "cd app && npm install", setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_theme = 'light'
    end, ft = { "markdown" },
  },

  ['preservim/vim-markdown'] = {},
  ['godlygeek/tabular'] = {},
  --
  -- ['oberblastmeister/neuron.nvim'] = {
  --   requires = {'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim', 'nvim-telescope/telescope.nvim'},
  --   config = function ()
  --     require'neuron'.setup {
  --       virtual_titles = true,
  --       mappings = true,
  --       run = nil, -- function to run when in neuron dir
  --       neuron_dir = "~/neuron", -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
  --       leader = "gz", -- the leader key to for all mappings, remember with 'go zettel'
  --     }
  --   end
  -- },
  --
  ['mbbill/undotree'] = {},
}

return M
