require("flutter-tools").setup{
  widget_guides = {
    enabled = true,
  },
  lsp = {
    on_attach = require('k.plugins.lsp').on_attach,
    capabilities = require('k.plugins.lsp').capabilities,
  }
}
