-- local on_attach = require("nvchad.configs.lspconfig").on_attach
-- local capabilities = require("nvchad.configs.lspconfig").capabilities
-- local on_init = require("nvchad.configs.lspconfig").on_init

---@type NvPluginSpec[]
local plugins = {
  {
    "RRethy/vim-illuminate",
    lazy = false,
    config = function()
      require("illuminate").configure {
        large_file_cutoff = 10000,
      }
    end,
    enabled = false, -- This plugin causes freezing when opening big files
  },
}

return plugins
