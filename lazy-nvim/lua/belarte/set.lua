-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- split
vim.opt.splitright = true
vim.opt.splitbelow = true

-- use undotree instead of swap file
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.showmatch = true

vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.colorcolumn = "120"

vim.opt.scrolloff = 8

vim.g.mapleader = " "
