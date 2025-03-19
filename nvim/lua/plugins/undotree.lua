return {
	{ -- Musthave visualizer for the undos in the buffer
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle [U]ndotree" })
		end,
	},
}
