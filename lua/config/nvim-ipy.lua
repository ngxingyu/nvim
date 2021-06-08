vim.g.nvim_ipy_perform_mappings = 0
vim.g.ipy_celldef = "# %%"

local opts = {noremap = true, silent = true}
local wk = require("which-key")
wk.register(
  {
    ["<leader>p"] = {
      name = "+IPython",
      p = {"<cmd>IPython<cr>","IPython"},
      a = {"<Plug>(IPy-RunAll)", "Run All"},
      r = {"<Plug>(IPy-Run)", "Run"},
      c = {"<Plug>(IPy-RunCell)", "Run Cell"},
      ["?"] = {"<Plug>(IPy-WordObjInfo)", "Inspect variable"},
      q = {"<Plug>(IPy-Interrupt)", "Interrupt"},
      k = {"<Plug>(IPy-Terminate)", "Kill"}
    }
  },
  opts
)
