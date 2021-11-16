local cmd = vim.cmd

local M = {}

function M.setup()
  -- Set Background to transparent
  cmd [[
    autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
            \ |          highlight LineNr     ctermbg=NONE guibg=NONE
            \ |          highlight SignColumn ctermbg=NONE guibg=NONE
  ]]
  cmd [[colorscheme nord]]
end

return M
