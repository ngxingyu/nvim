-- npm install -g graphql-language-service-cli
require'lspconfig'.graphql.setup {on_attach = require'lsp'.on_attach}
