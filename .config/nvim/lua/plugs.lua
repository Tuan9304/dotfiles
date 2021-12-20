vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt = true}
  use 'neovim/nvim-lspconfig'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'hoob3rt/lualine.nvim'
  use 'mizlan/termbufm'
  use 'b3nj5m1n/kommentary'
  use 'gabrielsimoes/cfparser.vim'
  use 'steelsojka/pears.nvim'
  use 'mhartington/formatter.nvim'
  use 'kyazdani42/nvim-tree.lua'
end)
