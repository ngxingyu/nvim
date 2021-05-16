vim.g.mapleader = ' '

vim.cmd([[
augroup neovim_terminal
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * :set nonumber norelativenumber
augroup END
]])
