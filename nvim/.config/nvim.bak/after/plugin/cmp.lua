local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
	return
end

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

local function border(hl_name)
	return {
		{ "╭", hl_name },
		{ "─", hl_name },
		{ "╮", hl_name },
		{ "│", hl_name },
		{ "╯", hl_name },
		{ "─", hl_name },
		{ "╰", hl_name },
		{ "│", hl_name },
	}
end

local cmp_window = require("cmp.utils.window")
local lspkind = require("lspkind")

cmp_window.info_ = cmp_window.info
cmp_window.info = function(self)
	local info = self:info_()
	info.scrollable = false
	return info
end

cmp.setup({
	window = {
		completion = {
			border = border("CmpBorder"),
			winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
		},
		documentation = {
			border = border("CmpDocBorder"),
		},
	},
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text",
			menu = {
				buffer = "[Buffer]",
				nvim_lsp = "[LSP]",
				luasnip = "[LuaSnip]",
				nvim_lua = "[Lua]",
				latex_symbols = "[Latex]",
			},
			before = require("tailwindcss-colorizer-cmp").formatter,
		}),
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	-- mapping = cmp.mapping.preset.insert({
	mapping = {
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		-- }),
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
})

local opts = { noremap = true, silent = true }
vim.keymap.set("i", "<C-n>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("s", "<C-n>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("i", "<C-p>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
vim.keymap.set("s", "<C-p>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
