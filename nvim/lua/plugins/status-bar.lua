return {
	-- Status bar
	{
		"nvim-lualine/lualine.nvim",
		event = "ColorScheme",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("lualine").setup({
				options = {
					theme = "rose-pine",
				},
			})
		end,
	},
}
