-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- use({
	-- 	"fenetikm/falcon",
	-- 	config = function()
	-- 		vim.cmd("set termguicolors")
	-- 		vim.cmd("colorscheme falcon")
	-- 	end,
	-- })

	use({ "catppuccin/nvim", as = "catppuccin" })

	use("echasnovski/mini.nvim")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use("nvim-treesitter/playground")

	use("christoomey/vim-tmux-navigator")

	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	use("tpope/vim-fugitive")
	use("tpope/vim-surround")

	use({
		"JoosepAlviste/nvim-ts-context-commentstring",
		config = function()
			require("ts_context_commentstring").setup({
				enable_autocmd = false,
			})
			vim.g.skip_ts_context_commentstring_module = true
		end,
	})

	use({
		"numToStr/Comment.nvim",
		requires = "JoosepAlviste/nvim-ts-context-commentstring",
		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
	})

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use("neovim/nvim-lspconfig")
	use("onsails/lspkind.nvim")

	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	use("lewis6991/gitsigns.nvim")

	use("nvim-lualine/lualine.nvim")
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

	-- use({
	-- 	"lukas-reineke/headlines.nvim",
	-- })

	use("github/copilot.vim")

	use({
		"roobert/tailwindcss-colorizer-cmp.nvim",
		-- optionally, override the default options:
		config = function()
			require("tailwindcss-colorizer-cmp").setup({
				color_square_width = 2,
			})
		end,
	})

	use("NvChad/nvim-colorizer.lua")

	use("kdheepak/lazygit.nvim")
end)
