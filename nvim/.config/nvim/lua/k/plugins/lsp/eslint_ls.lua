local util = require 'lspconfig.util'

require('lspconfig').eslint.setup {
  on_attach = function (client, bufnr)
    require('k.plugins.lsp').on_attach(client, bufnr)
  end,
  root_dir = util.root_pattern('package.json', '.git')
}
