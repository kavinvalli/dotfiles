vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use {
    'shaunsingh/nord.nvim',
    config = function() require 'k.themeing'.setup() end,
  }

  -- Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function() require 'k.plugins.treesitter' end,
    requires = {
      'windwp/nvim-ts-autotag',
      'p00f/nvim-ts-rainbow',
      'nvim-treesitter/playground',
    },
  }

  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require 'k.plugins.lualine' end,
  }

  -- Tabs (Buffer Line)
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function() require 'k.plugins.barbar' end,
  }

  -- Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require 'k.plugins.nvim-tree' end
  }

  -- Mapping Improvements
  use {
    'windwp/nvim-autopairs',
    config = function()
      require 'k.plugins.autopairs'
    end,
  }

  -- Keybindings
  use {
    'folke/which-key.nvim',
    config = function()
      require 'k.plugins.which-key'
    end
  }

  -- FZF
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require 'k.plugins.telescope' end
  }

  use {
    'neovim/nvim-lspconfig',
    requires = {
      {
        'hrsh7th/vim-vsnip',
        config = function() vim.g.vsnip_snippet_dir = '~/.config/nvim/vsnip' end
      },
      {
        'hrsh7th/nvim-cmp',
        requires = {
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-path',
          'hrsh7th/cmp-cmdline',
          'hrsh7th/cmp-vsnip',
          'onsails/lspkind-nvim',
        },
        config = function() require 'k.plugins.cmp' end,
      },
      {
        'jose-elias-alvarez/null-ls.nvim',
        config = function()
          require 'k.plugins.lsp.null_ls'
        end,
      },
      "jose-elias-alvarez/nvim-lsp-ts-utils",
      'sbdchd/neoformat',
      'mattn/emmet-vim',
    },
    config = function()
      require 'k.plugins.lsp'
      require 'k.plugins.lsp.html_ls'
      require 'k.plugins.lsp.css_ls'
      require 'k.plugins.lsp.tsserver_ls'
      require 'k.plugins.lsp.php_ls'
      require 'k.plugins.lsp.python_ls'
      -- require 'k.plugins.lsp.null_ls'
      require 'k.plugins.lsp.eslint_ls'
    end,
  }
end)

