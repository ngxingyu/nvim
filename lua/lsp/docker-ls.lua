-- npm install -g dockerfile-language-server-nodejs
pcall(function() return require'lspconfig'.dockerls.setup {
    cmd = {DATA_PATH .. "/lspinstall/dockerfile/node_modules/.bin/docker-langserver", "--stdio"},
    on_attach = require'lsp'.on_attach,
	root_dir = vim.loop.cwd
} end)
