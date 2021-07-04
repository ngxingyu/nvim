-- :LspInstall angular
pcall(function() return require'lspconfig'.angularls.setup {
    cmd = {DATA_PATH .. "/lspinstall/angular/node_modules/@angular/language-server/bin/ngserver", "--stdio"},
    on_attach = require'lsp'.on_attach,
} end)
