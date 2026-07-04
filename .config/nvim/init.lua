vim.pack.add({
    'https://github.com/neovim/nvim-lspconfig', -- lsp plugin
    'https://github.com/nvim-treesitter/nvim-treesitter', -- archived but required for go.nvim
    'https://github.com/ray-x/guihua.lua', -- required for go.nvim
    'https://github.com/ray-x/go.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons', -- required for lualine
    'https://github.com/nvim-lualine/lualine.nvim',
    'https://github.com/windwp/nvim-autopairs'
})

-- set line numbers on
vim.opt.number = true

-- Enable showcmd
vim.opt.showcmd = true

-- enable syntax highlights - might be un-needed
vim.opt.syntax = "on"

-- tab management
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4 -- amount of space for each indentation
vim.opt.softtabstop = 4 -- insert this many spaces when <Tab> is pressed in insert mode
-- vim.opt.tabstop = 4 -- how much space a tab takes

-- status line for each window
vim.opt.laststatus = 2

-- mouse support
vim.opt.mouse = "a"

-- command line completion
vim.opt.wildmode = "list:longest,full"

-- set spellcheck lang to english
vim.opt.spelllang = {'en'}

-- search options
vim.opt.incsearch = true -- incremental search
vim.opt.hlsearch = true -- highlight results
vim.opt.showmatch = true -- show match
vim.opt.ignorecase = true -- case insenseitive matches if term is lower case
vim.opt.smartcase = true -- case sensitivity if term has upper case

-- Strip whitespace from lines on save
-- Source - https://stackoverflow.com/a/77774160
-- Posted by lcheylus, modified by community. See post 'Timeline' for change history
-- Retrieved 2026-07-03, License - CC BY-SA 4.0
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('trim_whitespaces', { clear = true }),
  desc = 'Trim trailing white spaces',
  pattern = '*',
  callback = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '<buffer>',
      -- Trim trailing whitespaces
      callback = function()
        -- Save cursor position to restore later
        local curpos = vim.api.nvim_win_get_cursor(0)
        -- Search and replace trailing whitespaces
        vim.cmd([[keeppatterns %s/\s\+$//e]])
        vim.api.nvim_win_set_cursor(0, curpos)
      end,
    })
  end,
})

-- lsp config
vim.lsp.enable('gopls')

-- go.nvim config
require('go').setup()

-- lualine config
require('lualine').setup({
    options = {
	    theme = 'solarized_dark'
    }
})

-- nvim-autopairs config
require('nvim-autopairs').setup()

-- nvim-treesitter config
require('nvim-treesitter').setup({
  install_dir = vim.fn.stdpath('data') .. '/site',
})
require('nvim-treesitter').install({ 'go', 'gomod', 'gosum', 'gotmpl', 'gowork', 'python' })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '*' },
  callback = function() vim.treesitter.start() end,
})