vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Enable 256 colors
vim.opt.termguicolors = true

vim.cmd [[ set noswapfile ]]

-- Line numbers
vim.wo.relativenumber = true

vim.api.nvim_set_keymap('n', 'gd', "<Plug>(coc-definition)", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gy', "<Plug>(coc-type-definition)", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gi', "<Plug>(coc-implementation)", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gr', "<Plug>(coc-references)", { noremap = true, silent = true });


