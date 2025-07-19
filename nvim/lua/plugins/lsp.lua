return {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
        "mason.nvim",
        { "mason-org/mason-lspconfig.nvim", config = function() end },
    },
    opts = {
        servers = {
            html = {
                filetypes = { "html", "ejs" },
            },
        },
    },
}
