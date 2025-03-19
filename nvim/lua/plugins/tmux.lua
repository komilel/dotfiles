return {
	{
		"christoomey/vim-tmux-navigator",
		config = function()
			vim.keymap.set("n", "<C-h", "<cmd>TmuxNavigateLeft")
			vim.keymap.set("n", "<C-j", "<cmd>TmuxNavigateDown")
			vim.keymap.set("n", "<C-k", "<cmd>TmuxNavigateUp")
			vim.keymap.set("n", "<C-l", "<cmd>TmuxNavigateRight")
		end,
	},
}
