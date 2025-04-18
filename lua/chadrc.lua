-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.nvdash = {
  load_on_startup = true,
  header = {
    " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
    " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
    " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
    " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
    " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
    " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  },
}

M.base46 = {
  theme = "onedark",

  transparency = true,

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
      "shfmt",

      "marksman",
      "vale", -- markdown
      "markdownlint", -- markdown

      "yamllint",

      "codespell",
    }, -- pkg
  }, -- mason
}

M.ui = {
      tabufline = {
         lazyload = false
     }
}

return M
