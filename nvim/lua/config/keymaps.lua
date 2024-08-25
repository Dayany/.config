-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>tq", ":tabclose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>rr", ":!node %<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>fa", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sr", ":%s/", { noremap = true, silent = false })

-- incremental rename
vim.keymap.set("n", "<leader>rn", ":IncRename ")

--enable/disable stay centered
vim.keymap.set({ "n", "v" }, "<leader>rt", require("stay-centered").toggle, { desc = "Toggle stay-centered.nvim" })

-- Save file and quit
vim.keymap.set("n", "<Leader>w", ":update<Return>", opts)
vim.keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

keymap.set("n", "gpa", "ggVGp", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
