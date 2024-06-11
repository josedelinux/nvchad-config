require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- conflict with f, t (ref `:h ;`)
-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("c", "W", "w")
map("c", "Q", "q")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- gitsigns navigation
map("n", "]c", "<cmd>Gitsigns next_hunk<CR>", { desc = "Jump To next hunk" })
map("n", "[c", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Jump To previous hunk" })
-- other mappings : https://github.com/NvChad/NvChad/blob/164e8cc7fcb9006a1edd4ddfc98bf8c7f4fe2e0d/lua/nvchad/configs/gitsigns.lua#L20

-- vim-illuminate builtin mappings:
-- <A-n/p> navigate and <A-i> to selete text
map("o", "<a-t>", require("illuminate").textobj_select) -- `h mapmode-o`
map("n", "<a-t>", require("illuminate").textobj_select)

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
      -- ref: https://neovim.io/doc/user/api.html#api-win_config
    },
    clear_cmd = true,
  }
end, { desc = "Toggle Lazygit" })

map("n", "<leader>ll", function()
  require("lint").try_lint()
end, { desc = "Lint current buffer" })
