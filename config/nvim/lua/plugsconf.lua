vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      prefix = '',
    },
    update_in_insert = true,
  }
)

local servers = {'pyls'}

for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
      on_attach=require'completion'.on_attach
  }
end

-- require'lspconfig'.clangd.setup {}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {'cpp', 'ruby', 'bash', 'css', 'dart', 'html', 'java', 'javascript', 'kotlin', 'lua', 'nix', 'php', 'python', 'regex', 'c_sharp'},
  -- !Bug w/: toml, rust, typescript
  -- ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
}

--windwp/nvim-autopairs
require('nvim-autopairs').setup()

--Completion-nvim
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { noremap = true, expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { noremap = true, expr = true })

--Termbufm
vim.api.nvim_set_keymap('n', '<leader>b', ":call TermBufMExecCodeScript(&filetype, 'build')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ":call TermBufMExecCodeScript(&filetype, 'run')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ":call TermBufMExec('pbpaste > input')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ":call TermBufMToggle()<CR>", { noremap = true, silent = true })
vim.g.termbufm_direction_cmd = 'new'
vim.g.termbufm_code_scripts = {
    cpp = {
        build = {'g++ -std=c++14 -Wall -Wl,-stack_size -Wl,0x10000000 -DLOCAL -O2 %s', '%'},
	run = {'cat input | ./a.out'},
    },
    python = {
        build = {''},
	run = {'cat input | python %s', '%'},
    },
}
--everforest
vim.g.everforest_background = 'medium'
vim.g.everforest_enable_italic = 1
vim.g.everforest_disable_italic_comment = 0
vim.g.everforest_diagnostic_text_highlight = 1
--vim.g.everforest_diagnostic_line_highlight = 1 !NW
vim.g.everforest_better_performance = 1
vim.cmd('colorscheme everforest')

--hoob3rt/lualine.nvim
require('lualine').setup{
  options = {
    theme = 'everforest'
  }
}
vim.g.lightline = {
      colorscheme = 'everforest',
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
vim.api.nvim_set_keymap('n', '<leader><Space>', ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- cfparser.vim
vim.g.cf_pl_by_ext_custom = {
    [".cpp"] = 42,
}
