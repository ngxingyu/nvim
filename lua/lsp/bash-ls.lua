-- npm i -g bash-language-server
pcall(function() return require'lspconfig'.bashls.setup {
    cmd = {DATA_PATH .. "/lspinstall/bash/node_modules/.bin/bash-language-server", "start"},
    on_attach = require'lsp'.on_attach,
    filetypes = { "sh", "zsh" }
} end)
