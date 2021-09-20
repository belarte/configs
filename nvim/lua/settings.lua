local cmd = vim.cmd              -- execute Vim commands
local exec = vim.api.nvim_exec   -- execute Vimscript
local fn = vim.fn                -- call Vim functions
local g = vim.g                  -- global variables
local opt = vim.opt              -- global/buffer/windows-scoped options

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.colorcolumn = '120'       -- line lenght marker at 80 columns
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true      -- enable 24-bit RGB colors

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines

-- don't auto commenting new lines
cmd[[au BufEnter * set fo-=c fo-=r fo-=o]]

g.airline_powerline_fonts = 1
