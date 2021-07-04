pcall(function() return require'lspconfig'.svelte.setup {
    cmd = {DATA_PATH .. "/lspinstall/svelte/node_modules/.bin/svelteserver", "--stdio"},
    -- cmd = { "svelteserver", "--stdio"},
    on_attach = require'lsp'.on_attach,
    filetypes = { "svelte", "svx", "svelte.md" },
    root_dir = require"lspconfig".util.root_pattern("package.json", ".git")
} end)
