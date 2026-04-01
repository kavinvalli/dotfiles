-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "vesper",
	transparency = true,

	hl_override = {
		Normal = { bg = "NONE" },
		NormalNC = { bg = "NONE" },
		SignColumn = { bg = "NONE" },
		EndOfBuffer = { bg = "NONE" },
		NormalFloat = { bg = "#111111" },
		FloatBorder = { bg = "#111111" },
		Pmenu = { bg = "#111111" },
		BlinkCmpMenu = { bg = "#111111" },
		BlinkCmpDoc = { bg = "#111111" },
	},
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
