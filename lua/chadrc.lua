-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",

  transparency = true,

  nvdash = {
    load_on_startup = true,
    header = {
      " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
      " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
      " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
      " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
      " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
      " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
    },
  },

  statusline = {
    -- also try Ctrl + g
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
  },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },

  mason = {
    pkgs = {
      "lua-language-server",
      "stylua",

      "clangd",
      "clang-format",
      "cpplint",
      -- "cppcheck", -- need to install manually

      "rust-analyzer",
      -- "rustfmt", -- install via rustup `rustup component add rustfmt`

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

      "marksman",
      "vale", -- markdown

      "yamllint",

      "codespell",
    },-- pkg
  }, -- mason
}

return M
