require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- conflict with f, t (ref `:h ;`)
-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map("c", "W", "w")
-- map("c", "Q", "q")

-- Remap 'W' to 'w' and 'Q' to 'q' in command mode, but not in search mode
-- https://stackoverflow.com/questions/30836269/how-to-map-a-key-in-command-line-mode-but-not-in-search-mode
map("c", "Q", function()
  if vim.fn.getcmdtype() == ":" and vim.fn.getcmdpos() == 1 then
    return "q"
  else
    return "Q"
  end
end, { noremap = true, expr = true, nowait = true })

map("c", "W", function()
  if vim.fn.getcmdtype() == ":" and vim.fn.getcmdpos() == 1 then
    return "w"
  else
    return "W"
  end
end, { noremap = true, expr = true, nowait = true })

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- gitsigns navigation
map("n", "]c", "<cmd>Gitsigns next_hunk<CR>", { desc = "Jump To next hunk" })
map("n", "[c", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Jump To previous hunk" })
-- other mappings : https://github.com/NvChad/NvChad/blob/164e8cc7fcb9006a1edd4ddfc98bf8c7f4fe2e0d/lua/nvchad/configs/gitsigns.lua#L20

-- vim-illuminate builtin mappings:
-- <A-n/p> navigate and <A-i> to delete text
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

-- spectre mappings
map("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
  desc = "Toggle Spectre",
})
map("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word",
})
map("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word",
})
map("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})
