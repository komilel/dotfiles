
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Clear highlight after the search
vim.keymap.set('n', '<C-x>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>se', vim.cmd.Ex, { desc = '[S]how [E]xplorer' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = '<C-d> centered' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = '<C-u> centered' })

vim.keymap.set('n', 'n', 'nzz', { desc = 'n centered' })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'N centered' })

vim.keymap.set('n', '<leader>p', '"+p', { desc = 'Paste from system clipboard' })
vim.keymap.set('v', '<leader>p', '"_dP', { desc = 'Paste over a selection preserving the original content' })

vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', { desc = 'Yank to system clipboard' })

vim.keymap.set('n', '<leader>d', '"_d', { desc = 'Delete to the void (_) register' })

vim.keymap.set('n', '<Tab>', '<C-6>', { desc = '[Tab] to cycle recent buffers' })

vim.keymap.set('n', '<A-j>', '5<C-w>+', { desc = 'Resize vertical split down' })
vim.keymap.set('n', '<A-k>', '5<C-w>-', { desc = 'Resize vertical split up' })
vim.keymap.set('n', '<A-h>', '5<C-w><', { desc = 'Resize horizontal split left' })
vim.keymap.set('n', '<A-l>', '5<C-w>>', { desc = 'Resize horizontal split right' })
