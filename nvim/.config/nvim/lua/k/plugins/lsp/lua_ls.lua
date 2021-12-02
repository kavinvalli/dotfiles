USER = vim.fn.expand('$USER')

sumneko_root_path = "/Users/" .. USER
                        .. "/.config/nvim/lua-language-server"
sumneko_binary = "/Users/" .. USER
                     .. "/.config/nvim/lua-language-server/bin/macOS/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
require('lspconfig').sumneko_lua.setup {
  cmd = {
    sumneko_binary, "-E",
    sumneko_root_path .. "/main.lua"
  },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = runtime_path
      },
      diagnostics = {globals = {'vim', 'use'}},
      workspace = {
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn
              .expand('$VIMRUNTIME/lua/vim/lsp')] = true
        },
        maxPreload = 10000,
        preloadFileSize = 10000
      }
    }
  }
}
