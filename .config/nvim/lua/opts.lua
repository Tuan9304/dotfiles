vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.clipboard = 'unnamedplus'
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.wo.cursorline = true
vim.o.diffopt = vim.o.diffopt .. ',vertical'
vim.bo.expandtab = true
vim.o.hidden = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.mouse = 'a'
vim.wo.number = true
vim.o.path = vim.o.path .. ',**'
vim.wo.relativenumber = true
vim.bo.shiftwidth = 4
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.showmode = false
vim.wo.signcolumn = 'number'
vim.bo.softtabstop = 4
vim.o.splitbelow = true
vim.o.splitright = true
vim.bo.tabstop = 4
vim.o.termguicolors = true
vim.o.updatetime = 750
vim.wo.wrap = false
vim.o.writebackup = false
vim.cmd('syn on')

vim.api.nvim_set_keymap('n', '<leader>sv', ":luafile ~/.config/nvim/init.lua<CR>", { noremap=true })
