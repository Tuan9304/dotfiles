vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt = true}
  use 'sainnhe/forest-night'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'itchyny/lightline.vim'
  use 'tweekmonster/startuptime.vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'mizlan/termbufm'
  use 'akinsho/flutter-tools.nvim'
  use 'dart-lang/dart-vim-plugin'
  use 'itchyny/vim-gitbranch'
  use 'b3nj5m1n/kommentary'
  use 'kyazdani42/nvim-tree.lua'
end)
