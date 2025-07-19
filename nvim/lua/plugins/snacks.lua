return {
    "snacks.nvim",
    opts = {
        scroll = { enabled = false },
        picker = {
            sources = {
                explorer = {
                    layout = {
                        layout = {
                            position = "right",
                        },
                    },
                },
            },
        },
    },
    keys = {
        {
            "<leader>sf",
            function()
                Snacks.picker.files()
            end,
            desc = "Snacks [s]mart find [f]iles",
        },
    },
}
