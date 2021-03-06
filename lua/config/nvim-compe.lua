vim.o.completeopt = "menuone,noselect"

pcall(function() return require'compe'.setup {
    enabled = O.auto_complete,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = 'enable',
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true,
    source = {
        path = {kind = "   (Path)"},
        buffer = {kind = "   (Buffer)"},
        calc = {kind = "   (Calc)"},
        vsnip = {kind = "   (Snippet)"},
        nvim_lsp = {kind = "   (LSP)"},
		nvim_lua = true,
        spell = {kind = "   (Spell)"},
        tags = false,
        snippets_nvim = {kind = "  "},
        ultisnips = {kind = "  "},
        -- treesitter = {kind = "  "},
        emoji = {kind = " ﲃ  (Emoji)", filetypes={"markdown", "text"}}
    }
} end)

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col(".") - 1
    if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
        return true
    else
        return false
    end
end

-- tab completion
local trigger_ultisnips_fwd = function(fallthrough)
    if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
        return t([[<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>]])
    elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
        return t([[<C-R>=UltiSnips#JumpForwards()<CR>]])
    else
        return t(fallthrough)
    end
end

local trigger_ultisnips_bak = function(fallthrough)
    if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
        return t([[<C-R>=UltiSnips#JumpBackwards()<CR>]])
    else
        return t(fallthrough)
    end
end

_G.tab_complete = function()
    if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info()["selected"] ~= -1 then
        return t("<C-N>")
    -- elseif vim.fn.call("vsnip#available", {1}) == 1 then
    --     return t "<Plug>(vsnip-expand-or-jump)"
    -- if vim.fn.pumvisible() == 1 then
    --     return t "<C-n>"
    elseif vim.fn.call("vsnip#available", {1}) == 1 then
        return t "<Plug>(vsnip-expand-or-jump)"
    elseif vim.fn["UltiSnips#CanExpandSnippet"]() == 1 or vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
        return vim.api.nvim_replace_termcodes("<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>", true, true, true)
    -- elseif vim.fn.pumvisible() ~= 0 then
    --     return trigger_ultisnips_fwd("<C-N>")
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn['compe#complete']()
    end
end
_G.s_tab_complete = function()
    -- if vim.fn.pumvisible() == 1 then
    --     return t "<C-p>"
    if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info()["selected"] ~= -1 then
        return t("<C-P>")
    elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
        return t "<Plug>(vsnip-jump-prev)"
    elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
        return vim.api.nvim_replace_termcodes("<C-R>=UltiSnips#JumpBackwards()<CR>", true, true, true)
    -- elseif vim.fn.pumvisible() ~= 0 then
    --     return trigger_ultisnips_bak("<C-P>")
    else
        return t "<S-Tab>"
  end
end

-- map{mode = 'i', keys = "<C-x><C-p>", to = "<C-R>=UltiSnips#ListSnippets()<cr>"}

--  mappings
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap('i', '<CR>', [[compe#confirm('<CR>')]], {silent=true, expr=true})
-- inoremap <silent><expr> <CR>      compe#confirm('<CR>')

local g = vim.g
g.loaded_compe_calc = 0
g.loaded_compe_emoji = 0

g.loaded_compe_luasnip = 0
g.loaded_compe_nvim_lua = 0

g.loaded_compe_path = 0
g.loaded_compe_spell = 0
g.loaded_compe_tags = 0
g.loaded_compe_treesitter = 0

g.loaded_compe_snippets_nvim = 0

g.loaded_compe_ultisnips = 0
g.loaded_compe_vim_lsc = 0
g.loaded_compe_vim_lsp = 0
g.loaded_compe_omni = 0
