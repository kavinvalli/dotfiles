local M = {}

M.treesitter = {
  ensure_installed = {
    "html",
    "css",
    "vim",
    "sql",
    "javascript",
    "typescript",
    "json",
    "lua",
    "markdown",
    "yaml",
    "astro",
    "python",
  },
}

M.mason = {
   ensure_installed = {
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "emmet-ls",
    "json-lsp",
    "tailwindcss-language-server",
    "astro-language-server",
    "pyright",
    "rust-analyzer",
    "intelephense"
   },
}
--
M.comment = {
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}

M.ui = {
  statusline = {
    separator_style = "block",
  },
}

return M
