pcall(function() return require'nvim-treesitter.configs'.setup {
    ensure_installed = O.treesitter.ensure_installed, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = O.treesitter.ignore_install,
    highlight = {
        enable = O.treesitter.highlight.enabled, -- false will disable the whole extension
        use_languagetree = true
    },
    autotag = {enable = true},
    context_commentstring = {
        enable = true
    }
    -- indent = {enable = true, disable = {"python", "html", "javascript"}},
    -- indent = {enable = {"javascriptreact"}},
} end)
