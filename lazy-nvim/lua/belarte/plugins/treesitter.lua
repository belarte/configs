return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",

    config = function()
        vim.filetype.add({
            extension = {
                templ = "templ",
            },
        })

        require("nvim-treesitter").install({
            "json",
            "javascript",
            "typescript",
            "bash",
            "lua",
            "templ",
            "go",
            "rust",
            "clojure",
            "java",
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "json",
                "javascript",
                "typescript",
                "bash",
                "lua",
                "templ",
                "go",
                "rust",
                "clojure",
                "java",
            },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
