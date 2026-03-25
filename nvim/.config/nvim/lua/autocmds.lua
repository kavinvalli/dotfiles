require "nvchad.autocmds"

-- Write Neovim's RPC socket path to a well-known location so external tools
-- (like OpenCode) can connect to this Neovim instance.
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local socket = vim.v.servername
    if socket and socket ~= "" then
      local f = io.open("/tmp/nvim-opencode-socket", "w")
      if f then
        f:write(socket)
        f:close()
      end
    end
  end,
})

-- Clean up the socket file when Neovim exits
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    os.remove("/tmp/nvim-opencode-socket")
  end,
})
