require'lspconfig'.pyright.setup{
  on_attach = require('k.plugins.lsp').on_attach,
  capabilities = require('k.plugins.lsp').capabilities,
}
