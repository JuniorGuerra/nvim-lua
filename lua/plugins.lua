vim.cmd [[packadd packer.nvim]]
require'lspconfig'.pyright.setup{}

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'



  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'haorenW1025/completion-nvim',
    opt = true,
    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 
	    {'kyazdani42/nvim-web-devicons'} -- optional, for file icon
  },

  use {'dracula/vim', as = 'dracula'}

}

end)

