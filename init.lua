require('globals') -- Create global lua table
require('settings') -- bunch of configs
require('plugins') -- entrypoint for plugins
require('config') -- All plugin configurations
require('mappings') -- shortcuts

vim.cmd('source ~/.config/nvim/vimscript/functions.vim')

require('lsp') -- LSP configs
require('lsp.lua-ls')
require('lsp.efm-ls')
require('lsp.html-ls')
require('lsp.latex-ls')
-- require('lsp.efm-general-ls')
-- require('lsp.angular-ls')
require('lsp.bash-ls')
-- require('lsp.clangd')
require('lsp.css-ls')
-- require('lsp.dart-ls')
-- require('lsp.docker-ls')
-- require('lsp.elm-ls')
-- require('lsp.emmet-ls')
-- require('lsp.graphql-ls')
-- require('lsp.go-ls')
require('lsp.json-ls')
require('lsp.js-ts-ls')
-- require('lsp.kotlin-ls')
-- require('lsp.php-ls')
require('lsp.python-ls')
-- require('lsp.ruby-ls')
-- require('lsp.rust-ls')
require('lsp.svelte-ls')
-- require('lsp.terraform-ls')
require('lsp.tailwindcss-ls')
require('lsp.vim-ls')
require('lsp.vue-ls')
require('lsp.yaml-ls')

