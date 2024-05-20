local builtin = require("telescope.builtin")
local ts = require("telescope")
--
-- ts.setup({
-- 	defaults = {
-- 		sort_mru = true,
-- 		sorting_strategy = "ascending",
-- 		layout_config = {
-- 			prompt_position = "top",
-- 		},
-- 		borderchars = {
-- 			prompt = { "▔", "▕", "▁", "▏", "🭽", "🭾", "🭿", "🭼" },
-- 			results = { "▔", "▕", "▁", "▏", "🭽", "🭾", "🭿", "🭼" },
-- 			preview = { "▔", "▕", "▁", "▏", "🭽", "🭾", "🭿", "🭼" },
-- 		},
-- 		border = true,
-- 		multi_icon = "",
-- 		entry_prefix = "   ",
-- 		prompt_prefix = " 🔍  ",
-- 		selection_caret = "  ",
-- 		hl_result_eol = true,
-- 		results_title = "",
-- 		winblend = 0,
-- 		wrap_results = true,
-- 	},
-- })

vim.keymap.set("n", "<leader>pf", function()
	builtin.find_files({ hidden = true })
end, {})
vim.keymap.set("n", "<C-p>", function()
	builtin.git_files({ hidden = true })
end, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > "), hidden = true })
end)
