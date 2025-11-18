-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
	  'gregorias/nvim-mapper',
	  config = function() require"nvim-mapper".setup{} end,
	  before = {"telescope.nvim", "harpoon"},
  }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'}},
	  config = function() require('telescope').load_extension('mapper') end
  }

end)
