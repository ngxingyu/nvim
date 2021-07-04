pcall(function() return require('dap-python').setup('~/miniconda3/bin/python') end)

-- virtual text deactivated (default)
-- vim.g.dap_virtual_text = false
-- show virtual text for current frame (recommended)
-- vim.g.dap_virtual_text = true
-- request variable values for all frames (experimental)
vim.g.dap_virtual_text = 'all frames'

vim.api.nvim_set_keymap('n', '<leader>dn', ":lua require('dap-python').test_method()<CR>",{noremap =true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>df', ":lua require('dap-python').test_class()<CR>",{noremap =true, silent = true})
vim.api.nvim_set_keymap('v', '<leader>ds', "<ESC>:lua require('dap-python').debug_selection()<CR>",{noremap =true, silent = true})
