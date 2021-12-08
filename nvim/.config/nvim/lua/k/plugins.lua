vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use {
        -- 'shaunsingh/nord.nvim',
        'folke/tokyonight.nvim',
        config = function() require 'k.themeing' end
    }

    -- Highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require 'k.plugins.treesitter' end,
        requires = {
            'windwp/nvim-ts-autotag', 'p00f/nvim-ts-rainbow',
            'nvim-treesitter/playground'
        }
    }

    -- Status Line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function() require 'k.plugins.lualine' end
    }

    -- Tabs (Buffer Line)
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require 'k.plugins.barbar' end
    }

    -- Tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require 'k.plugins.nvim-tree' end
    }

    -- Keybindings
    use {
        'folke/which-key.nvim',
        config = function() require 'k.plugins.which-key' end
    }

    -- FZF
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = function() require 'k.plugins.telescope' end
    }

    use {
        'neoclide/coc.nvim',
        branch = "release",
        config = function() require("k.plugins.coc") end,
        requires = {
            'sheerun/vim-polyglot', 'alampros/vim-styled-jsx', 'mattn/emmet-vim', 'jiangmiao/auto-pairs'
        }
    }

    use "editorconfig/editorconfig-vim"

    use "christoomey/vim-tmux-navigator"
    use "tpope/vim-commentary"
    use "psliwka/vim-smoothie"

    use {
        "glepnir/dashboard-nvim",
        config = function() require 'k.plugins.dashboard' end
    }

    -- Git Integration
    use "tpope/vim-fugitive"
    use "lewis6991/gitsigns.nvim"
    use {
        "TimUntersberger/neogit",
        config = function() require "k.plugins.neogit" end
    }
    use {
        "sindrets/diffview.nvim",
        config = function() require 'k.plugins.diffview' end
    }
    use "kdheepak/lazygit.nvim"

    -- Slides
    use "sotte/presenting.vim"

    -- Miscallaneous
    use 'rcarriga/nvim-notify'
    use {
        'andweeb/presence.nvim',
        config = function() require 'k.plugins.presence' end
    }

end)

