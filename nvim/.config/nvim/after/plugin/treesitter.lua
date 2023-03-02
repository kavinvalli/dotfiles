require("nvim-treesitter.configs").setup({
  -- A list of parser names, or "all"
  ensure_installed = {
    "help",
    "javascript",
    "typescript",
    "c",
    "lua",
    "rust",
    "vim",
    "json",
    "tsx",
    "yaml",
    "gitignore",
    "dockerfile",
    "bash",
    "html",
    "css",
    "astro",
    "prisma",
    "markdown",
    "cpp",
    "python",
  },
  autotag = { enable = true },
  indent = { enable = true },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
