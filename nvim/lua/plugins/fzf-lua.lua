return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		keys = {
			{
				"<leader>sf",
				"<cmd>FzfLua files<CR>",
				mode = "",
				desc = "FzfLua Search Files",
			},

			{
				"<leader>sg",
				"<cmd>FzfLua live_grep<CR>",
				mode = "",
				desc = "FzfLua Search Grep",
			},

			{
				"<leader>ws",
				"<cmd>FzfLua lsp_live_workspace_symbols<CR>",
				mode = "",
				desc = "FzfLua Workspace Symbols",
			},

			{
				"<leader>sh",
				"<cmd>FzfLua helptags<CR>",
				mode = "",
				desc = "FzfLua Search Help",
			},

			{
				"<leader>sk",
				"<cmd>FzfLua keymaps<CR>",
				mode = "",
				desc = "FzfLua Search Keymaps",
			},
		},
	},
}
