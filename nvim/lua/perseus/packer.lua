vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
		  'nvim-telescope/telescope.nvim', tag = '0.1.5',
		  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
		  "catppuccin/nvim",
		  as = "catppuccin",
		  config = function()
				  vim.cmd('colorscheme catppuccin')
		  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('Eandrju/cellular-automaton.nvim')

  use("nvim-lua/plenary.nvim")
  use {
		  "ThePrimeagen/harpoon",
		  branch = "harpoon2",
		  requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {
		  'VonHeikemen/lsp-zero.nvim',
		  branch = 'v3.x',
		  requires = {
				  {'williamboman/mason.nvim'},
				  {'williamboman/mason-lspconfig.nvim'},

				  -- LSP Support
				  {'neovim/nvim-lspconfig'},
				  -- Autocompletion
				  {'hrsh7th/nvim-cmp'},
				  {'hrsh7th/cmp-nvim-lsp'},
				  {'L3MON4D3/LuaSnip'},
		  }
  }

  use('vadimcn/codelldb')
  use('simrat39/rust-tools.nvim')

end)
