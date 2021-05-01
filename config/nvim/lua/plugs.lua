vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt = true}
  use 'sainnhe/everforest'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'hoob3rt/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'mizlan/termbufm'
  use 'itchyny/vim-gitbranch'
  use 'b3nj5m1n/kommentary'
  use 'kyazdani42/nvim-tree.lua'
  use 'gabrielsimoes/cfparser.vim'
  use 'windwp/nvim-autopairs'
end)
