vim.o.background = "dark"
vim.o.termguicolors = true

local catppuccino = require("catppuccino")

catppuccino.setup({
  integrations = {
    telescope = true,
    ts_rainbow = true,
  },
})

catppuccino.load()
