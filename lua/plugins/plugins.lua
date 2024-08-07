-- local on_attach = require("nvchad.configs.lspconfig").on_attach
-- local capabilities = require("nvchad.configs.lspconfig").capabilities
-- local on_init = require("nvchad.configs.lspconfig").on_init

---@type NvPluginSpec[]
local plugins = {
  {
    "RRethy/vim-illuminate",
    event = {
      "CursorHold",
      "CursorMoved",
      "InsertEnter",
    },
    -- lazy = false,
    config = function()
      require("illuminate").configure {
        large_file_cutoff = 10000,
      }
    end,
    -- enabled = false, -- This plugin causes freezing when opening big files

    -- builtin mappings:
    -- <A-n/p> navigate and <A-i>
  },
  {
    "mfussenegger/nvim-lint",
    -- lazy = false,
    event = {
      "BufWritePost",
      "BufReadPost",
      "InsertLeave",
    },

    config = function()
      local lint = require "lint"

      local cpp_linters = {}
      -- check for availability one by one
      if vim.fn.executable "cppcheck" == 1 then
        table.insert(cpp_linters, "cppcheck")
      end

      if vim.fn.executable "clang-tidy" == 1 then
        table.insert(cpp_linters, "clangtidy")
      end

      if vim.fn.executable "cpplint" == 1 then
        table.insert(cpp_linters, "cpplint")
      end
      -- print(vim.inspect(cpp_linters))

      lint.linters_by_ft = {
        -- c = { "clangtidy", "cpplint", "cppcheck" },
        -- cpp = { "clangtidy", "cpplint", "cppcheck" },
        c = cpp_linters,
        cpp = cpp_linters,
        javascript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        yaml = { "yamllint" },
        markdown = { "vale" },
        python = { "ruff", "pylint", "mypy" },
        go = { "golangcilint" },
        fish = { "fish" },
        bash = { "shellcheck" },
        zsh = { "zsh" },
      }
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "TextChanged" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
  {
    "nvim-pack/nvim-spectre",
  },
}

return plugins
