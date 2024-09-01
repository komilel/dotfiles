require("komi.set")
require("komi.remap")
require("komi.lazy")

-- Autocommands
-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Hyprlang LSP
-- vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
-- 		pattern = {"*.hl", "hypr*/*.conf"},
-- 		callback = function(event)
-- 				print(string.format("starting hyprls for %s", vim.inspect(event)))
-- 				vim.lsp.start {
-- 						name = "hyprlang",
-- 						cmd = {"hyprls"},
-- 						root_dir = vim.fn.getcwd(),
-- 				}
-- 		end
-- })
