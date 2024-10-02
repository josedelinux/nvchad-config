-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local servers = {
  "clangd",
  "gopls",
  "pyright",
  "marksman",
  "html",
  "cssls",
  "ts_ls",
  "rust_analyzer",
}


local nvlsp = require "nvchad.configs.lspconfig"

local on_attach_with_inlay = function(client, buffer)
  nvlsp.on_attach(client, buffer)
  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(true)
  end
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach_with_inlay,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
