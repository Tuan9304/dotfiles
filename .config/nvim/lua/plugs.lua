vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt = true}
  use 'sainnhe/everforest'
  use 'neovim/nvim-lspconfig'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'hoob3rt/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'mizlan/termbufm'
  use 'b3nj5m1n/kommentary'
  use 'gabrielsimoes/cfparser.vim'
  use 'steelsojka/pears.nvim'
  use 'mhartington/formatter.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
end)
