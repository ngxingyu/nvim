require'lspconfig'.terraformls.setup{
    cmd = {DATA_PATH .. "/lspinstall/terraform/terraform-ls", "serve"},
    on_attach = require'lsp'.on_attach
}
