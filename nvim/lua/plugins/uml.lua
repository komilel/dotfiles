return {
	{
		"javiorfo/nvim-soil",

		lazy = true,
		ft = "plantuml",
		opts = {
			-- If you want to change default configurations

			-- This option closes the image viewer and reopen the image generated
			-- When true this offers some kind of online updating (like plantuml web server)
			actions = {
				redraw = false,
			},

			-- If you want to customize the image showed when running this plugin
			image = {
				darkmode = false, -- Enable or disable darkmode
				format = "png", -- Choose between png or svg

				-- This is a default implementation of using nsxiv to open the resultant image
				-- Edit the string to use your preferred app to open the image (as if it were a command line)
				-- Some examples:
				-- return "feh " .. img
				-- return "xdg-open " .. img
				execute_to_open = function(img)
					return "xdg-open " .. img
				end,
			},
		},
	},
}
