local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
end

local status, coc_config = pcall(require, 'coc-config')
if (not status) then
  print("Can't import coc_config.lua")
end

vim.cmd [[packadd packer.nvim]]
packer.startup (function(use)
  use 'wbthomason/packer.nvim'
  use 'jacoborus/tender.vim'
  use 'itchyny/lightline.vim'
  use 'xiyaowong/transparent.nvim'
  use 'preservim/nerdtree'
  use {'neoclide/coc.nvim', branch = 'release'}
end)
