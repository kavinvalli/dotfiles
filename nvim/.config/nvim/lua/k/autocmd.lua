-- require('k.utils').create_augroups {
--   fmt = {
--     {
--       'BufWritePre * Neoformat'
--       -- 'BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)'
--     }
--   }
-- }

vim.cmd [[ autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx ]]
