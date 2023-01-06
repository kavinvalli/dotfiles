local M = {}

M.treesitter = {
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "html",
    "css",
    "vim",
    "sql",
    "javascript",
    "tsx",
    "typescript",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "yaml",
    "astro",
    "python",
    "prisma",
    "fish"
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
    "intelephense",
    "prisma-language-server"
   },
}

M.comment = {
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}

return M
