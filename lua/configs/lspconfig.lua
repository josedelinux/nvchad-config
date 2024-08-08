-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "clangd",
  "gopls",
  "pyright",
  "marksman",
  "html",
  "cssls",
  "tsserver",
  "rust_analyzer",
}

local on_attach_with_inlay = function(client, buffer)
  on_attach(client, buffer)
  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(true)
  end
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach_with_inlay,
    on_init = on_init,
    capabilities = capabilities,
  }
end
