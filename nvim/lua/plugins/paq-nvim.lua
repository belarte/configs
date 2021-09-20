-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Bootstrapping
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
   fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

-- Plugin manager: paq-nvim
-- https://github.com/savq/paq-nvim

vim.cmd 'packadd paq-nvim'            -- load paq
local paq = require('paq-nvim').paq   -- import module with `paq` function

-- Add packages
-- for package info see: init.lua (Lua modules)
require 'paq' {
  'savq/paq-nvim';  -- let paq manage itself

  'jremmen/vim-ripgrep';
  'vim-airline/vim-airline';
  'junegunn/fzf';
  'junegunn/fzf.vim';
  'tpope/vim-fugitive';
  'airblade/vim-gitgutter';
  'vimwiki/vimwiki';
  'Olical/conjure';
}
