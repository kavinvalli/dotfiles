return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    -- lazy = true,
    -- keys = {
    --   { "<c-Left>", "<cmd>TmuxNavigateLeft<cr>" },
    -- { "<c-Down>", "<cmd>TmuxNavigateDown<cr>" },
    -- { "<c-Up>", "<cmd>TmuxNavigateUp<cr>" },
    -- { "<c-Right>", "<cmd>TmuxNavigateRight<cr>" },
    -- { "<c-h>" },
    -- { "<c-j>" },
    -- { "<c-k>" },
    -- { "<c-l>" },
    -- },
  },

  { import = "nvchad.blink.lazyspec" },

  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
        ["<C-j>"] = { "select_next", "snippet_forward", "fallback" },
        ["<C-k>"] = { "select_prev", "snippet_backward", "fallback" },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "tsx",
      },
    },
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
      local harpoon = require "harpoon"
      harpoon:setup()

      -- Telescope integration
      local conf = require("telescope.config").values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table {
              results = file_paths,
            },
            previewer = conf.file_previewer {},
            sorter = conf.generic_sorter {},
          })
          :find()
      end

      vim.keymap.set("n", "<leader>a", function()
        harpoon:list():add()
      end, { desc = "Harpoon add file" })

      vim.keymap.set("n", "<C-e>", function()
        toggle_telescope(harpoon:list())
      end, { desc = "Harpoon toggle menu (telescope)" })

      vim.keymap.set("n", "<leader>1", function()
        harpoon:list():select(1)
      end, { desc = "Harpoon file 1" })

      vim.keymap.set("n", "<leader>2", function()
        harpoon:list():select(2)
      end, { desc = "Harpoon file 2" })

      vim.keymap.set("n", "<leader>3", function()
        harpoon:list():select(3)
      end, { desc = "Harpoon file 3" })

      vim.keymap.set("n", "<leader>4", function()
        harpoon:list():select(4)
      end, { desc = "Harpoon file 4" })

      vim.keymap.set("n", "<leader>5", function()
        harpoon:list():select(5)
      end, { desc = "Harpoon file 5" })

      vim.keymap.set("n", "<S-Tab>", function()
        harpoon:list():prev()
      end, { desc = "Harpoon prev" })

      vim.keymap.set("n", "<Tab>", function()
        harpoon:list():next()
      end, { desc = "Harpoon next" })

      -- Open in splits/tabs from the harpoon menu
      harpoon:extend {
        UI_CREATE = function(cx)
          vim.keymap.set("n", "<C-v>", function()
            harpoon.ui:select_menu_item { vsplit = true }
          end, { buffer = cx.bufnr })

          vim.keymap.set("n", "<C-x>", function()
            harpoon.ui:select_menu_item { split = true }
          end, { buffer = cx.bufnr })

          vim.keymap.set("n", "<C-t>", function()
            harpoon.ui:select_menu_item { tabedit = true }
          end, { buffer = cx.bufnr })
        end,
      }
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
    opts = {
      enhanced_diff_hl = true,
      default_args = {
        DiffviewOpen = { "--imply-local" },
      },
      keymaps = {
        file_panel = {
          { "n", "cc", "<Cmd>sp <bar> wincmd J <bar> term git commit<CR>", { desc = "Commit staged changes" } },
          { "n", "ca", "<Cmd>sp <bar> wincmd J <bar> term git commit --amend<CR>", { desc = "Amend the last commit" } },
        },
      },
    },
  },

  {
    "cousine/opencode-context.nvim",
    opts = {
      tmux_target = nil, -- Manual override: "session:window.pane"
      auto_detect_pane = true, -- Auto-detect opencode pane in current window
    },
    keys = {
      { "<leader>oc", "<cmd>OpencodeSend<cr>", desc = "Send prompt to opencode" },
      { "<leader>oc", "<cmd>OpencodeSend<cr>", mode = "v", desc = "Send prompt to opencode" },
      { "<leader>ot", "<cmd>OpencodeSwitchMode<cr>", desc = "Toggle opencode mode" },
      { "<leader>op", "<cmd>OpencodePrompt<cr>", desc = "Open opencode persistent prompt" },
    },
    cmd = { "OpencodeSend", "OpencodeSwitchMode" },
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<Tab>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        panel = {
          enabled = true,
        },
      }
    end,
  },

  {
    "f-person/git-blame.nvim",
    -- load the plugin at startup
    event = "VeryLazy",
    -- Because of the keys part, you will be lazy loading this plugin.
    -- The plugin will only load once one of the keys is used.
    -- If you want to load the plugin at startup, add something like event = "VeryLazy",
    -- or lazy = false. One of both options will work.
    opts = {
      -- your configuration comes here
      -- for example
      enabled = true, -- if you want to enable the plugin
      message_template = " <summary> • <date> • <author> • <<sha>>", -- template for the blame message, check the Message template section for more options
      date_format = "%m-%d-%Y %H:%M:%S", -- template for the date, check Date format section for more options
      virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
      gitblame_delay = 3000,
    },
  },
}
