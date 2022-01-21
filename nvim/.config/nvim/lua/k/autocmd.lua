-- require('k.utils').create_augroups {
--   fmt = {
--     {
--       'BufWritePre * Neoformat'
--       -- 'BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)'
--     }
--   }
-- }

vim.cmd [[ autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx ]]
vim.cmd [[ autocmd BufNewFile,BufRead *.jsx set filetype=javascriptreact ]]
vim.cmd [[ autocmd BufNewFile,BufRead *.prisma set filetype=prisma ]]
