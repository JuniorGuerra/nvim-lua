vim.cmd [[packadd packer.nvim]]

require'lspconfig'.pyright.setup{}
local use = require('packer').use

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'nvim-lua/completion-nvim'

    use 'simrat39/rust-tools.nvim'
  use 'simrat39/rust-tools.nvim'

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  -- Themes of nvim
  use 'shaunsingh/nord.nvim'
  use 'shaeinst/roshnivim-cs'
  use 'folke/tokyonight.nvim'	
  -- Using Packer
  use 'navarasu/onedark.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
 use 'andweeb/presence.nvim'
end)

