return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        enabled = false,
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
            })
        end,
    },
    {
        "zbirenbaum/copilot-cmp",
        enabled = false,
        config = function ()
            -- copilot-cmp calls `client.is_stopped()` (dot syntax), which is
            -- deprecated in Neovim 0.12. Give its client a method-call shim.
            local source = require("copilot_cmp.source")
            local new = source.new
            source.new = function(client, ...)
                client.is_stopped = function()
                    return getmetatable(client).__index.is_stopped(client)
                end
                return new(client, ...)
            end

            require("copilot_cmp").setup()
        end
    },
}
