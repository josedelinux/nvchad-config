require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- conflict with f, t (ref `:h ;`)
-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("c", "W", "w")
map("c", "Q", "q")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle Transparency" })

map({ "n", "t" }, "<M-g>", function()
  require("nvchad.term").toggle {
    cmd = "lazygit",
    pos = "float",
    id = "gitToggleTerm",
    float_opts = {
      -- ocupamos toda la pantalla
      width = 1,
      height = 1,
      -- ref: https://github.com/NvChad/ui/blob/v2.5/lua/nvchad/term/init.lua#L39   
      -- ref: https://neovim.io/doc/user/api.html#nvim_open_win()
    },
    clear_cmd = true,
  }
end, { desc = "Toggle Lazygit" })
