vim.g.mapleader = ' '


function _G.WinMove(key)
    Curwin = vim.api.nvim_get_current_win
    Cur = Curwin()
    vim.api.nvim_command("wincmd "..key)
    if Curwin() == Cur then
        if (string.match('jk',key)) then
            vim.api.nvim_command("wincmd s")
        else
            vim.api.nvim_command("wincmd v")
        end
        vim.api.nvim_command("wincmd "..key)
    end
end

vim.api.nvim_set_keymap('n', '<C-h>', ":lua WinMove('h')<cr>",{noremap =true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', ":lua WinMove('j')<cr>",{noremap =true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', ":lua WinMove('k')<cr>",{noremap =true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', ":lua WinMove('l')<cr>",{noremap =true, silent = true})

-- Alt j / k to swap lines
vim.cmd([[
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
]])

-- Resize with arrows
vim.cmd([[
nnoremap <silent> <C-Up>    :resize +2<CR>
nnoremap <silent> <C-Down>  :resize -2<CR>
nnoremap <silent> <C-Right>  :vertical resize +2<CR>
nnoremap <silent> <C-Left> :vertical resize -2<CR>

nnoremap <silent> <C-_> :CommentToggle<CR>
vnoremap <silent> <C-_> :'<,'>CommentToggle<CR>
]])

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t','<Esc>','<C-\\><C-n>',{noremap = true, silent = true}) -- allows for escaping terminal

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F12>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})


-- Close file
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', '<Leader>q', ':q!<CR>', {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', {noremap = true, silent=true})
-- vim.api.nvim_set_keymap("n", "<leader>c", ":BufferClose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>c", ":bd!<CR>", {noremap = true, silent = true})

vim.cmd([[
augroup neovim_terminal
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * :set nonumber norelativenumber
augroup END
autocmd FileType c nnoremap <buffer> <F5> :w<CR>:!gcc -o %< % && ./%< <CR>
autocmd FileType cpp nnoremap <buffer> <F5> :w<CR>:!g++ -o %< % && ./%< <CR>
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>%%
]])
