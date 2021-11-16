require('lspconfig').cssls.setup {
  on_attach = require('k.plugins.lsp').on_attach,
  capabilities = require('k.plugins.lsp').capabilities,
  flags = {
    debounce_text_changes = 150,
  },
}
