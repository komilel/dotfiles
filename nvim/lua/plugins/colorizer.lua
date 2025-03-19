return {
	{ -- Useful highlight for the colors!
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				css = {
					mode = "background",
					rgb_fn = true,
				},
				rasi = {
					mode = "background",
					rgb_fn = true,
				},
			})
		end,
	},
}
