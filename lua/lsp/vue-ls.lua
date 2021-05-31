
require('lspconfig').vuels.setup {
    cmd = { "vls", "--stdio"},
    on_attach = require'lsp'.on_attach,
    -- root_dir = require('lspconfig').util.root_pattern(".git", ".")
    root_dir = require'lspconfig'.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
    init_options = {
        config = {
            vetur = {
                ignoreProjectWarning = true,
            }
        }
    }
}
