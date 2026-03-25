require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("v", "jk", "<ESC>")
map("n", "<C-d>", "10<C-d>zz")
map("n", "<C-u>", "10<C-u>zz")
map("n", "<S-l>", ":bnext<cr>")
map("n", "<S-h>", ":bprev<cr>")
map("n", "<C-a>", ':!tmux display-popup -E "~/.local/bin/tmux-sessionizer"<CR>')

vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-l>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-j>")
map({ "n", "v" }, "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
map({ "n", "v" }, "<C-l>", "<cmd>TmuxNavigateRight<cr>")
map({ "n", "v" }, "<C-k>", "<cmd>TmuxNavigateUp<cr>")
map({ "n", "v" }, "<C-j>", "<cmd>TmuxNavigateDown<cr>")

map("n", "<C-g>", ':!tmux display-popup -E "~/.local/bin/git-branch-fzf"<CR>')

-- Diffview
map("n", "<leader>do", "<cmd>DiffviewOpen<cr>", { desc = "Diffview open" })
map("n", "<leader>dc", "<cmd>DiffviewClose<cr>", { desc = "Diffview close" })
map("n", "<leader>dh", "<cmd>DiffviewFileHistory %<cr>", { desc = "Diffview file history (current file)" })
map("n", "<leader>dH", "<cmd>DiffviewFileHistory<cr>", { desc = "Diffview file history (repo)" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- OpenCode auto-send: send selection/file to OpenCode pane without prompt dialog
local function find_opencode_pane()
  local handle = io.popen "tmux list-panes -F '#{pane_id} #{pane_current_command}' 2>/dev/null"
  if not handle then
    return nil
  end
  local result = handle:read "*a"
  handle:close()
  for pane_id, cmd in result:gmatch "(%%%d+)%s+(%S+)" do
    if cmd == "opencode" then
      return pane_id
    end
  end
  return nil
end

local function send_to_opencode(text)
  local pane = find_opencode_pane()
  if not pane then
    vim.notify("No opencode pane found in current tmux window", vim.log.levels.WARN)
    return
  end
  -- Write text to a temp file and use load-buffer to avoid escaping issues
  local tmpfile = os.tmpname()
  local f = io.open(tmpfile, "w")
  if f then
    f:write(text)
    f:close()
  end
  vim.fn.system(
    string.format("tmux load-buffer %s && tmux paste-buffer -t %s && tmux send-keys -t %s Enter", tmpfile, pane, pane)
  )
  os.remove(tmpfile)
end

-- Send visual selection to OpenCode (no prompt)
map("v", "<leader>oS", function()
  vim.cmd 'normal! "zy'
  local selection = vim.fn.getreg "z"
  local filepath = vim.fn.expand "%:."
  local msg = string.format("Here is code from `%s`:\n```\n%s\n```", filepath, selection)
  send_to_opencode(msg)
end, { desc = "Send selection to OpenCode (auto)" })

-- Send current file reference to OpenCode (no prompt)
map("n", "<leader>oF", function()
  local filepath = vim.fn.expand "%:."
  send_to_opencode("@" .. filepath)
end, { desc = "Send current file to OpenCode (auto)" })
