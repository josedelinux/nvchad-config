-- default plugins
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      -- ensure_installed = {},
    },
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "│" },
        -- delete = { text = "󰍵" }, -- nvchad default
        topdelete = { text = "‾" },
        -- changedelete = { text = "󱕖" }, -- nvchad default
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      numhl = true, -- Toggle with `:Gitsigns toggle_numhl`
      linehl = false, -- Toggle with `:Gitsigns toggle_linehl` -- it could be harder to find out
      word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff` -- why no space ph?

      -- also be aware that you can always use space gb(Git Blame)
      current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 100, -- defaults: 1000
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        "vimdoc",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",

        -- low level
        "c",
        "cpp",
        "rust",

        -- go
        "go",
        "gomod",
        "gowork",
        "gosum",

        -- python
        "python",

        -- build system
        "make",
        "cmake",

        -- shells
        "bash",
        "fish",

        -- markdown
        "markdown",
        "markdown_inline",

        -- git
        "git_config",
        "gitcommit",
        "git_rebase",
        "gitignore",
        "gitattributes",
      },
    },
  },
}
