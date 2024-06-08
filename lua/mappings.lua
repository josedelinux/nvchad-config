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
