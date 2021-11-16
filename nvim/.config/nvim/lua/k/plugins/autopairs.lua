local autopairs = require 'nvim-autopairs'

local map = require('k.utils').map

function _G.confirm()
  return autopairs.check_break_line_char()
end

autopairs.setup {
  check_ts = true,
  enable_moveright = true,
}

map('i', '<cr>', [[v:lua.confirm()]], { expr = true, noremap = true })

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))


-- add a lisp filetype (wrap my-function), FYI: Hardcoded = { "clojure", "clojurescript", "fennel", "janet" }
cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket"
