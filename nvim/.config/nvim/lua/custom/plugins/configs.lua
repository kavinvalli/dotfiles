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
    "astro"
  }
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
   },
}

return M
