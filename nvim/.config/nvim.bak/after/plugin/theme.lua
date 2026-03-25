-- .setup({
-- 	flavour = "mocha", -- latte, frappe, macchiato, mocha
-- 	background = { -- :h background
-- 		light = "latte",
-- 		dark = "mocha",
-- 	},
-- 	transparent_background = false,
-- 	show_end_of_buffer = false, -- show the '~' characters after the end of buffers
-- 	term_colors = false,
-- 	dim_inactive = {
-- 		enabled = false,
-- 		shade = "dark",
-- 		percentage = 0.15,
-- 	},
-- 	no_italic = false, -- Force no italic
-- 	no_bold = false, -- Force no bold
-- 	styles = {
-- 		comments = { "italic" },
-- 		conditionals = { "italic" },
-- 		loops = {},
-- 		functions = {},
-- 		keywords = {},
-- 		strings = {},
-- 		variables = {},
-- 		numbers = {},
-- 		booleans = {},
-- 		properties = {},
-- 		types = {},
-- 		operators = {},
-- 	},
-- 	color_overrides = {},
-- 	custom_highlights = {},
-- 	integrations = {
-- 		cmp = true,
-- 		gitsigns = true,
-- 		nvimtree = true,
-- 		telescope = true,
-- 		notify = false,
-- 		mini = false,
-- 		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
-- 	},
-- })

vim.g.catppuccin_flavour = "mocha"

require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	term_colors = true,
	transparent_background = true,
	no_italic = false,
	no_bold = false,
	styles = {
		comments = {},
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
	},
	color_overrides = {
		mocha = {
			base = "#000000",
			mantle = "#000000",
			crust = "#000000",
		},
	},
	highlight_overrides = {
		mocha = function(C)
			return {
				TabLineSel = { bg = C.pink },
				CmpBorder = { fg = C.surface2 },
				Pmenu = { bg = C.none },
				TelescopeBorder = { link = "FloatBorder" },
			}
		end,
	},
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin")
