
require('lspconfig').vuels.setup {
    cmd = { "vls" },
    filetypes = { "vue" },
    on_attach = require'lsp'.on_attach,
    -- root_dir = require('lspconfig').util.root_pattern(".git", ".")
    root_dir = require'lspconfig'.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
    init_options = {
        config = {
            vetur = {
                ignoreProjectWarning = true,
                completion = {
                    -- tagCasing = "kebab",
                    -- useScaffoldSnippets = false
                },
                format = {
                    defaultFormatter = {
                        js = "prettier",
                        ts = "prettier"
                    },
                    defaultFormatterOptions = {formatCommand = "./node_modules/.bin/prettier --stdin-filepath ${INPUT}", formatStdin = true},
                    scriptInitialIndent = true,
                    styleInitialIndent = true
                },
            }
        }
    }
}
