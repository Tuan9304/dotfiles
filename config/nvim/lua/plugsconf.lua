vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      prefix = '',
    },
    update_in_insert = true,
  }
)

local servers = {'pyls', 'dartls'}

for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
      on_attach=require'completion'.on_attach
  }
end

require'lspconfig'.clangd.setup {}

require "flutter-tools".setup {}

vim.g.dart_format_on_save = 1

require'nvim-treesitter.configs'.setup {
  ensure_installed = {'cpp', 'ruby', 'bash', 'css', 'dart', 'html', 'java', 'javascript', 'kotlin', 'lua', 'nix', 'php', 'python', 'regex'},
  -- !Bug w/: toml, rust, typescript
  -- ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
}

--Completion-nvim
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { noremap = true, expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { noremap = true, expr = true })

--Termbufm
vim.api.nvim_set_keymap('n', '<leader>b', ":call TermBufMExecCodeScript(&filetype, 'build')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ":call TermBufMExecCodeScript(&filetype, 'run')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ":call TermBufMExec('pbpaste > input')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ":call TermBufMToggle()<CR>", { noremap = true, silent = true })
vim.g.termbufm_direction_cmd = 'new'
vim.g.termbufm_code_scripts = {
	python = {
	  build = {''}, run = {'cat input | python %s', '%'}
	},
	cpp = {
	  build = {'g++-10 -std=c++14 -Wall -Wextra -DLOCAL -O2 %s', '%'}, run = {'cat input | ./a.out'}
	},
	java = {
	  build = {'javac %s', '%'}, run = {'cat input | java %s', '%:r'}
	},
	c = {
	  build = {'gcc %s', '%'}, run = {'cat input | ./a.out'}
	}
}
--Forest-night
vim.g.forest_night_enable_italic = 1
vim.g.forest_night_disable_italic_comment = 1
vim.g.forest_night_diagnostic_text_highlight = 1
vim.g.forest_night_better_performance = 1
vim.cmd('colorscheme forest-night')

--lightline.vim
vim.g.lightline = {
      colorscheme = 'forest_night',
      active = {
      	left = { {'mode', 'paste'}, {'gitbranch', 'readonly', 'filename', 'modified'} }
      },
      component_function = {
      	gitbranch = 'gitbranch#name'
      },
}
-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- nvim-tree.lua
vim.api.nvim_set_keymap('n', '<leader><Space>', ":NvimTreeToggle<CR>", { noremap = true })
