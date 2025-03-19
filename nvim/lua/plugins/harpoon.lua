return {
	{ -- Hop between files!
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup({
				settings = {
					save_on_toggle = true,
				},
			})

			vim.keymap.set("n", "<leader>ha", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<leader>hl", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "<leader>hp", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<leader>hn", function()
				harpoon:list():next()
			end)

			vim.keymap.set("n", "<C-M-H>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<C-M-J>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<C-M-K>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<C-M-L>", function()
				harpoon:list():select(4)
			end)
		end,
	},
}
