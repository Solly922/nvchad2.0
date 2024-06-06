local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "v" }, "<leader>q", "<cmd>q<CR>", { desc = "quit" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
map("n", "<leader>h", "<cmd>noh<CR>", { desc = "clear highlights" })

map("n", "<S-h>", function()
  require("nvchad.tabufline").tabuflinePrev()
end, { desc = "buffer goto prev" })

map("n", "<S-l>", function()
  require("nvchad.tabufline").tabuflineNext()
end, { desc = "buffer goto next" })

map({ "n", "v" }, "<leader>w", "<cmd>w<CR>", { desc = "file save" })

map("i", "<C-H>", "<C-W>")
