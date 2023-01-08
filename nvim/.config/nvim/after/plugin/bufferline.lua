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

vim.keymap.set("n", "<leader>1", '<cmd>lua require("bufferline").go_to_buffer(1, true)<cr>')
vim.keymap.set("n", "<leader>2", '<cmd>lua require("bufferline").go_to_buffer(2, true)<cr>')
vim.keymap.set("n", "<leader>3", '<cmd>lua require("bufferline").go_to_buffer(3, true)<cr>')
vim.keymap.set("n", "<leader>4", '<cmd>lua require("bufferline").go_to_buffer(4, true)<cr>')
vim.keymap.set("n", "<leader>5", '<cmd>lua require("bufferline").go_to_buffer(5, true)<cr>')
vim.keymap.set("n", "<leader>6", '<cmd>lua require("bufferline").go_to_buffer(6, true)<cr>')
vim.keymap.set("n", "<leader>7", '<cmd>lua require("bufferline").go_to_buffer(7, true)<cr>')
vim.keymap.set("n", "<leader>8", '<cmd>lua require("bufferline").go_to_buffer(8, true)<cr>')
vim.keymap.set("n", "<leader>9", '<cmd>lua require("bufferline").go_to_buffer(9, true)<cr>')
vim.keymap.set("n", "<leader>10", '<cmd>lua require("bufferline").go_to_buffer(10, true)<cr>')
vim.keymap.set("n", "<S-l>", ":bnext<cr>")
vim.keymap.set("n", "<S-h>", ":bprev<cr>")
vim.keymap.set("n", "<leader>x", ":bdelete<cr>")
