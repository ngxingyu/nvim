pcall(function() return require'lspconfig'.rust_analyzer.setup{
    cmd = {DATA_PATH .. "/lspinstall/rust/rust-analyzer"},
    on_attach = require'lsp'.on_attach
} end)

