local cmd = vim.cmd              -- execute Vim commands
local g = vim.g                  -- global variables
local opt = vim.opt              -- global/buffer/windows-scoped options

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.colorcolumn = '120'       -- line length marker at 120 columns
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.splitright = true
opt.splitbelow = true

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true      -- enable 24-bit RGB colors
opt.background = 'dark'
--cmd("autocmd Filetype * colorscheme catppuccino")
--cmd("autocmd Filetype vimwiki colorscheme desert")

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines

-- don't auto commenting new lines
cmd[[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Plugins configuration
g.airline_powerline_fonts = 1
g.better_whitespace_enabled = 1
