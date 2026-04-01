require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "vtsls" }
vim.lsp.enable(servers)

vim.lsp.config("vtsls", {
  settings = {
    typescript = {
      tsserver = {
        maxTsServerMemory = 8192,
      },
      preferGoToSourceDefinition = true,
    },
    javascript = {
      tsserver = {
        maxTsServerMemory = 8192,
      },
      preferGoToSourceDefinition = true,
    },
    vtsls = {
      autoUseWorkspaceTsdk = true,
    },
  },
})

-- read :h vim.lsp.config for changing options of lsp servers
