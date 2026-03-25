require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls" }
vim.lsp.enable(servers)

vim.lsp.config("*", {
  root_markers = { ".git" },
})

-- read :h vim.lsp.config for changing options of lsp servers
