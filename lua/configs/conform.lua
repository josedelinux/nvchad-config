local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofmt" },
    -- python = { "black", "isort" },
    python = function(bufnr)
      if require("conform").get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format", "ruff_organize_imports", "ruff_fix" }
      else
        return { "isort", "black" }
      end
    end,
    css = { "prettier" },
    html = { "prettier" },
    markdown = { "prettier" },

    ["*"] = { "codespell" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
