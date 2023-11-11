return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        enabled = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme "rose-pine"
        end,
    },
    {
        "bluz71/vim-nightfly-guicolors",
        name = 'nightfly',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme "nightfly"
        end,
    },
}
