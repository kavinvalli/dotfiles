require("bufferline").setup({
	options = {
		mode = "buffers", -- set to "tabs" to only show tabpages instead
		numbers = "ordinal",
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				separator = true, -- use a "true" to enable the default, or set your own character
			},
		},
	},
})

for i = 1, 10 do
	vim.keymap.set("n", "<leader>" .. i, ":BufferLineGoToBuffer " .. i .. "<CR>")
end
vim.keymap.set("n", "<S-l>", ":bnext<cr>")
vim.keymap.set("n", "<S-h>", ":bprev<cr>")
vim.keymap.set("n", "<leader>x", ":bdelete<cr>")
