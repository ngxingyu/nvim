pcall(function() return require'lspconfig'.texlab.setup{
    cmd = {DATA_PATH .. "/lspinstall/latex/texlab"},
    on_attach = require'lsp'.on_attach
} end)