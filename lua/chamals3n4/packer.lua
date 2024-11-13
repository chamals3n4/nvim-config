-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('Mofiqul/vscode.nvim')
  use('ThePrimeagen/harpoon')
  use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use{
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"j-hui/fidget.nvim",
	"neovim/nvim-lspconfig",
  }
end) 
