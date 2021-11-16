-- https://github.com/typescript-language-server/typescript-language-server
local buf_map = function(bufnr, mode, lhs, rhs, opts)
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or {
        silent = true,
    })
end
require('lspconfig').tsserver.setup {
  on_attach = function (client, bufnr)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false

    require('k.plugins.lsp').on_attach(client, bufnr)
  end,
  capabilities = require('k.plugins.lsp').capabilities,
  flags = {
    debounce_text_changes = 150,
  }
}
