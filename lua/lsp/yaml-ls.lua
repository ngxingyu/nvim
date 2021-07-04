-- npm install -g yaml-language-server
pcall(function() return require'lspconfig'.yamlls.setup{
	cmd = {DATA_PATH .. "/lspinstall/yaml/node_modules/.bin/yaml-language-server", "--stdio"},
    on_attach = require'lsp'.on_attach,
} end)
