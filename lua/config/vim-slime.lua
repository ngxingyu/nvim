-- vim.g.nvim_ipy_perform_mappings = 0
-- vim.g.ipy_celldef = "# %%"

-- local opts = {noremap = true, silent = true}
-- local wk = require("which-key")
-- wk.register(
--   {
--     ["<leader>p"] = {
--       name = "+IPython",
--       p = {"<cmd>IPython<cr>","IPython"},
--       a = {"<Plug>(IPy-RunAll)", "Run All"},
--       r = {"<Plug>(IPy-Run)", "Run"},
--       c = {"<Plug>(IPy-RunCell)", "Run Cell"},
--       ["?"] = {"<Plug>(IPy-WordObjInfo)", "Inspect variable"},
--       q = {"<Plug>(IPy-Interrupt)", "Interrupt"},
--       k = {"<Plug>(IPy-Terminate)", "Kill"}
--     }
--   },
--   opts
-- )
vim.g.slime_target = "screen"
vim.g.slime_cell_delimiter = "# %%"

vim.api.nvim_set_keymap('n', '<C-c>s', "<Plug>SlimeSendCell",{noremap =true, silent = true})
