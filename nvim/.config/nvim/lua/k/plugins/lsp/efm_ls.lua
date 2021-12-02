require"lspconfig".efm.setup {
  init_options = {documentFormatting = true},
  filetypes = {"lua"},
  settings = {
    rootMarkers = {".git/"},
    languages = {
      lua = {
        {
          formatCommand = "lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=50 --break-after-table-lb --tab-width=2 --indent-width=2",
          formatStdin = true
        }
      }
    }
  }
}
