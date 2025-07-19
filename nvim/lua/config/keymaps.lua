-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "j", "gj", { desc = "Go down by visual line" })
vim.keymap.set("n", "k", "gk", { desc = "Go up by visual line" })

-- Clear highlight after the search
vim.keymap.set("n", "<C-x>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "<C-d> centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "<C-u> centered" })

vim.keymap.set("n", "n", "nzz", { desc = "n centered" })
vim.keymap.set("n", "N", "Nzz", { desc = "N centered" })

vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete to the void (_) register" })

vim.keymap.set("n", "<Tab>", "<C-6>", { desc = "[Tab] to cycle recent buffers" })

-- vim.keymap.ret("n", "<A-j>", "5<C-w>+", { desc = "Resize vertical split down" })
-- vim.keymap.set("n", "<A-k>", "5<C-w>-", { desc = "Resize vertical split up" })
-- vim.keymap.set("n", "<A-h>", "5<C-w><", { desc = "Resize horizontal split left" })
-- vim.keymap.set("n", "<A-l>", "5<C-w>>", { desc = "Resize horizontal split right" })
