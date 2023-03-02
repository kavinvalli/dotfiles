require("nvim-tree").setup({
	git = {
		ignore = false,
	},
})

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
