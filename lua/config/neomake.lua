vim.cmd([[
let eslint = neomake#makers#ft#javascript#eslint()
call remove(eslint, 'cwd')
let eslint.exe = 'eslint'
let g:neomake_javascript_eslintcustom_maker = eslint
]])
