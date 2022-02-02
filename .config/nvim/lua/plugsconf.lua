--[[ vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      prefix = '',
    },
    update_in_insert = true,
  }
) ]]

-- local servers = {'pyls'}

--[[ for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
      on_attach=require'completion'.on_attach
  }
end ]]

-- require'lspconfig'.clangd.setup {}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      "bash", "cpp", "cmake", "css", "dart", "dockerfile", "dot", "html", "java", "javascript", "json",
      "kotlin", "latex", "lua", "nix", "php", "python", "regex", "scss", "toml", "typescript", "vim", "vue", "yaml"
  },
  highlight = {
    enable = true,
  },
}

-- steelsojka/pears.nvim
require "pears".setup(function(conf)
  conf.remove_pair_on_outer_backspace(false)
end)

-- mhartington/formatter.nvim
require('formatter').setup({
  filetype = {
    cpp = {
        -- clang-format
       function()
          return {
            exe = "clang-format",
            args = {"--assume-filename", vim.api.nvim_buf_get_name(0), "-style=Webkit"},
            stdin = true,
            cwd = vim.fn.expand('%:p:h')  -- Run clang-format in cwd of the file.
          }
        end
    },
  }
})
vim.api.nvim_set_keymap('n', '<leader>f', ":Format<CR>", { noremap = true, silent = true })
-- Format on save
-- vim.api.nvim_exec([[
-- augroup FormatAutogroup
  -- autocmd!
  -- autocmd BufWritePost *.cpp FormatWrite
-- augroup END
-- ]], true
-- )


--Termbufm
vim.api.nvim_set_keymap('n', '<leader>b', ":call TermBufMExecCodeScript(&filetype, 'build')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ":call TermBufMExecCodeScript(&filetype, 'run')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ":call TermBufMExec('pbpaste > input')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ks', ":call TermBufMExec('python3 ~/.config/nvim/submit.py -f ' .. expand('%:p'))<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ":call TermBufMToggle()<CR>", { noremap = true, silent = true })
vim.g.termbufm_direction_cmd = 'new'
vim.g.termbufm_code_scripts = {
    cpp = {
        build = {'g++-11 -std=c++11 -Wshadow -Wall -DLOCAL -O2 %s', '%:p'},
	run = {'cat input | ./a.out'},
    },
    python = {
        build = {''},
	run = {'cat input | python %s', '%:p'},
    },
}
--everforest
vim.g.everforest_background = 'medium'
vim.g.everforest_enable_italic = 1
vim.g.everforest_disable_italic_comment = 0
vim.g.everforest_diagnostic_text_highlight = 1
vim.g.everforest_diagnostic_virtual_text = 'colored'
--vim.g.everforest_diagnostic_line_highlight = 1 !NW
vim.g.everforest_better_performance = 1
vim.cmd('colorscheme everforest')

--hoob3rt/lualine.nvim
require('lualine').setup{
  options = {
    theme = 'everforest'
  },
}

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- cfparser.vim
vim.g.cf_pl_by_ext_custom = {
    [".cpp"] = 42,
}

-- lukas-reineke/indent-blankline.nvim
vim.opt.list = true
vim.opt.listchars:append("space:⋅")

require("indent_blankline").setup {
    space_char_blankline = " ",
}


