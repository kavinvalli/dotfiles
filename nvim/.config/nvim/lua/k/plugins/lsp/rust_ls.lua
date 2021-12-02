require('rust-tools').setup {
  tools = {
    autoSetHints = true,
    hover_with_actions = true,
    inlay_hints = {
        show_parameter_hints = false,
        parameter_hints_prefix = "",
        other_hints_prefix = "",
    },
  },
  server = {
    on_attach = require('k.plugins.lsp').on_attach,
    capabilities = require('k.plugins.lsp').capabilities,
    settings = {
      ["rust-analyzer"] = {
          checkOnSave = {
              command = "clippy"
          },
      }
    }
  },
}
