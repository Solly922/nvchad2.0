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

--
-- Copilot
--
map({ "n", "v" }, "<leader>ae", "<cmd>Copilot enable<cr>", { desc = "Enable Copilot" })
map({ "n", "v" }, "<leader>ad", "<cmd>Copilot disable<cr>", { desc = "Disable Copilot" })
map({ "n", "v" }, "<leader>ar", "<cmd>Copilot reload<cr>", { desc = "Reload Copilot" })
map({ "n", "v" }, "<leader>ap", "<cmd>Copilot panel<cr>", { desc = "Open Copilot panel" })
map({ "n", "v" }, "<leader>aS", "<cmd>Copilot status<cr>", { desc = "Copilot status" })
map({ "n", "v" }, "<leader>av", "<cmd>Copilot version<cr>", { desc = "Copilot version" })
