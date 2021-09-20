local g = vim.g                  -- global variables
local map = vim.api.nvim_set_keymap

-- Make <Space> leader key
map('n', '<Space>', '', {})
g.mapleader = ' '
g.maplocalleader = ","

options = { noremap = true }

-- Move in normal mode
map('n', ';', 'l', options)
map('n', 'l', 'k', options)
map('n', 'k', 'j', options)
map('n', 'j', 'h', options)

-- Move in visual mode
map('v', ';', 'l', options)
map('v', 'l', 'k', options)
map('v', 'k', 'j', options)
map('v', 'j', 'h', options)

-- Move between tabs
map('n', '<C-W>;', '<C-W>l', options)
map('n', '<C-W>l', '<C-W>k', options)
map('n', '<C-W>k', '<C-W>j', options)
map('n', '<C-W>j', '<C-W>h', options)

-- Reorganise tabs
map('n', '<C-W>:', '<C-W>L', options)
map('n', '<C-W>L', '<C-W>K', options)
map('n', '<C-W>K', '<C-W>J', options)
map('n', '<C-W>J', '<C-W>H', options)

--map('n', '<Leader>o', ':Files<CR>', options)
-- map('n', '<Leader>f', ':Rg<CR>', options)
