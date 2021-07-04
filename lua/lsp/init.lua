local lsp_config = {}
local status, wk = pcall(function() return require("which-key") end)
function lsp_config.on_attach(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Mappings.
  local opts = {noremap = true, silent = true}

  buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
  buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  -- buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  -- buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
  -- buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
  -- buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
  buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  buf_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
  buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
  buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
  buf_set_keymap("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)

  -- Set some keybinds condition_ul on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  end

  buf_set_keymap("n", "<leader>la", "<cmd>Lspsaga code_action<cr>", opts)
  buf_set_keymap("n", "<leader>lA", "<cmd>Lspsaga range_code_action<cr>", opts)
  buf_set_keymap("n", "<leader>ld", "<cmd>Telescope lsp_document_diagnostics<cr>", opts)
  buf_set_keymap("n", "<leader>lD", "<cmd>Telescope lsp_workspace_diagnostics<cr>", opts)
  buf_set_keymap("n", "<leader>lf", "<cmd>LspFormatting<cr>", opts)
  buf_set_keymap("n", "<leader>li", "<cmd>LspInfo<cr>", opts)
  buf_set_keymap("n", "<leader>ll", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
  buf_set_keymap("n", "<leader>lp", "<cmd>Lspsaga preview_definition<cr>", opts)
  buf_set_keymap("n", "<leader>lq", "<cmd>Telescope quickfix<cr>", opts)
  buf_set_keymap("n", "<leader>lr", "<cmd>Lspsaga rename<cr>", opts)
  buf_set_keymap("n", "<leader>lt", "<cmd>LspTypeDefinition<cr>", opts)
  buf_set_keymap("n", "<leader>lx", "<cmd>cclose<cr>", opts)
  buf_set_keymap("n", "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", opts)
  buf_set_keymap("n", "<leader>lS", "<cmd>Telescope lsp_workspace_symbols<cr>", opts)

  if status then wk.register(
      {
        ["<leader>l"] = {
          name = "+LSP",
          a = {"<cmd>Lspsaga code_action<cr>", "Code Action"},
          A = {"<cmd>Lspsaga range_code_action<cr>", "Selected Action"},
          d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
          D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
          f = {"<cmd>LspFormatting<cr>", "Format"},
          i = {"<cmd>LspInfo<cr>", "Info"},
          F = {"<cmd>Lspsaga lsp_finder<cr>", "LSP Finder"},
          l = {"<cmd>Lspsaga show_line_diagnostics<cr>", "Line Diagnostics"},
          p = {"<cmd>Lspsaga preview_definition<cr>", "Preview Definition"},
          q = {"<cmd>Telescope quickfix<cr>", "Quickfix"},
          r = {"<cmd>Lspsaga rename<cr>", "Rename"},
          t = {"<cmd>LspTypeDefinition<cr>", "Type Definition"},
          x = {"<cmd>cclose<cr>", "Close Quickfix"},
          s = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
          S = {"<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols"}
        }
      },
      opts
    )
  end
end

-- local lspconf = require("lspconfig")

-- -- these langs require same lspconfig so put em all in a table and loop through!
-- local servers = {"html", "cssls", "tsserver", "pyright", "bashls", "clangd", "ccls"}

-- for _, lang in ipairs(s

-- replace the default lsp diagnostic letters with prettier symbols
vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})

return lsp_config
