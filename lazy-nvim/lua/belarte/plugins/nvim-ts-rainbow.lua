return {
    "p00f/nvim-ts-rainbow",
    event = { "BufReadPre" },
    dependencies = {
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            rainbow = {
                enable = true,
                extended_mode = true,
            },
        })
    end,
}
