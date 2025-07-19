return {
    { -- Musthave visualizer for the undos in the buffer
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Toggle [U]ndotree" })
        end,
    },
    -- {
    --     "SunnyTamang/select-undo.nvim",
    --     opts = {},
    -- },
}
