-- default plugins
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
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
      ensure_installed = {
        "lua-language-server",
        "stylua",

        "clangd",
        "clang-format",
        "cpplint",
        -- "cppcheck", -- need to install manually

        "gopls",
        "goimports",
        "golangci-lint",

        "pyright",
        "ruff",
        "mypy",
        "pylint",
        -- ya que tenemos `ruff`
        -- "black",
        -- "isort",

        "typescript-language-server",
        "html-lsp",
        "css-lsp",
        "prettier",
        "eslint_d",

        "shellcheck",

        "vale", -- markdown

        "yamllint",

        "codespell",
      },
    },
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = {
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
