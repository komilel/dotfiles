return {
    { -- Hop between files!
        "ThePrimeagen/harpoon",
        lazy = false,
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            settings = {
                save_on_toggle = true,
            },
        },
        config = function()
            local harpoon = require("harpoon")

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

            vim.keymap.set("n", "<M-C-H>", function()
                harpoon:list():select(1)
            end)

            vim.keymap.set("n", "<M-C-J>", function()
                harpoon:list():select(2)
            end)

            vim.keymap.set("n", "<M-C-K>", function()
                harpoon:list():select(3)
            end)

            vim.keymap.set("n", "<M-C-L>", function()
                harpoon:list():select(4)
            end)

            vim.keymap.set("n", "<M-C-Y>", function()
                harpoon:list():select(5)
            end)

            vim.keymap.set("n", "<M-C-U>", function()
                harpoon:list():select(6)
            end)

            vim.keymap.set("n", "<M-C-I>", function()
                harpoon:list():select(7)
            end)

            vim.keymap.set("n", "<M-C-O>", function()
                harpoon:list():select(8)
            end)
        end,
    },
}
