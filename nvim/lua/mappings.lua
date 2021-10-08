local g = vim.g                  -- global variables
local map = vim.api.nvim_set_keymap

-- Make <Space> leader key
map('n', '<Space>', '', {})
g.mapleader = ' '
g.maplocalleader = ","

options = { noremap = true }

local normal_mappings = {
   -- Move in normal mode
   [';'] = 'l',
   ['l'] = 'k',
   ['k'] = 'j',
   ['j'] = 'h',

   -- Move between tabs
   ['<C-W>;'] = '<C-W>l',
   ['<C-W>l'] = '<C-W>k',
   ['<C-W>k'] = '<C-W>j',
   ['<C-W>j'] = '<C-W>h',

   -- Reorganise tabs
   ['<C-W>:'] = '<C-W>L',
   ['<C-W>L'] = '<C-W>K',
   ['<C-W>K'] = '<C-W>J',
   ['<C-W>J'] = '<C-W>H',

   -- Telescope
   ["<Leader>f"] = ":Telescope find_files<CR>",
   ["<Leader>g"] = ":Telescope live_grep<CR>",
   ["<Leader>b"] = ":Telescope buffers<CR>",

   -- LSP
   ["<Leader>ca"] = ":lua vim.lsp.buf.code_action()<CR>",
   --["gd"] = ":lua vim.lsp.buf.definition()<CR>",

   -- Misc
   ["<Leader><ESC>"] = ":nohl<CR>",
}

for mapping, action in pairs(normal_mappings) do
   vim.api.nvim_set_keymap("n", mapping, action, { noremap = true, silent = true })
end

local visual_mappings = {
   -- Move in visual mode
   [';'] = 'l',
   ['l'] = 'k',
   ['k'] = 'j',
   ['j'] = 'h',
}

for mapping, action in pairs(visual_mappings) do
   vim.api.nvim_set_keymap("v", mapping, action, { noremap = true, silent = true })
end
