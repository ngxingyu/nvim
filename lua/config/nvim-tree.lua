local g = vim.g

-- vim.o.termguicolors = true

g.nvim_tree_side = "left"
g.nvim_tree_width = 26
g.nvim_tree_ignore = {".git", "node_modules", ".cache"}
g.nvim_tree_auto_open = 0
g.nvim_tree_auto_close = O.auto_close_tree -- 0 by default, closes the tree when it's the last window
g.nvim_tree_follow = 1 -- "0 by default, this option allows the cursor to be updated when entering a buffer
g.nvim_tree_indent_markers = 1 -- "0 by default, this option shows indent markers when folders are open
g.nvim_tree_hide_dotfiles = 0 -- 0 by default, this option hides files and folders starting with a dot `.`
g.nvim_tree_git_hl = 1
g.nvim_tree_root_folder_modifier = ":t"
g.nvim_tree_tab_open = 0
g.nvim_tree_allow_resize = 1
g.nvim_tree_lsp_diagnostics = 1

local status, tree_cb = pcall(function() return require'nvim-tree.config'.nvim_tree_callback end)
if status then vim.g.nvim_tree_bindings = {
<<<<<<< HEAD
      -- ["<CR>"] = ":YourVimFunction()<cr>",
      -- ["u"] = ":lua require'some_module'.some_function()<cr>",
        {key = {"l", "<CR>", "o"}, cb = tree_cb("edit")},
        {key = "h", cb = tree_cb("close_node")},
        {key = "v", cb = tree_cb("vsplit")}
    } end
=======
    -- ["<CR>"] = ":YourVimFunction()<cr>",
    -- ["u"] = ":lua require'some_module'.some_function()<cr>",
    {key = {"l", "<CR>", "o"}, cb = tree_cb("edit")},
    {key = "h", cb = tree_cb("close_node")},
    {key = "v", cb = tree_cb("vsplit")}
} end
>>>>>>> 5c32a33a8271b25f26fd81a3693bbd90eec8be40
vim.g.nvim_tree_show_icons = {git = 1, folders = 1, files = 1}
vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {unstaged = "", staged = "✓", unmerged = "", renamed = "➜", untracked = ""},
    folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
}



-- local M = {}

-- M.config = function()
--     local g = vim.g

--     vim.o.termguicolors = true

--     g.nvim_tree_side = "left"
--     g.nvim_tree_width = 30
--     g.nvim_tree_ignore = {".git", "node_modules", ".cache"}
--     g.nvim_tree_auto_open = 1
--     g.nvim_tree_auto_close = O.auto_close_tree -- 0 by default, closes the tree when it's the last window
--     g.nvim_tree_quit_on_open = 0
--     g.nvim_tree_follow = 1
--     g.nvim_tree_indent_markers = 1
--     g.nvim_tree_hide_dotfiles = 0
--     g.nvim_tree_git_hl = 1
--     g.nvim_tree_root_folder_modifier = ":t"
--     g.nvim_tree_tab_open = 0
--     g.nvim_tree_allow_resize = 1
--     g.nvim_tree_lsp_diagnostics = 1
--     g.nvim_tree_auto_ignore_ft = {'startify', 'dashboard'}

--     g.nvim_tree_show_icons = {
--         git = 1,
--         folders = 1,
--         files = 1,
--         folder_arrows = 1
--     }

--     vim.g.nvim_tree_icons = {
--         default = '',
--         symlink = '',
--         git = {
--             unstaged = "",
--             staged = "S",
--             unmerged = "",
--             renamed = "➜",
--             deleted = "",
--             untracked = "U",
--             ignored = "◌"
--         },
--         folder = {
--             default = "",
--             open = "",
--             empty = "",
--             empty_open = "",
--             symlink = ""
--         }
--     }
--     local tree_cb = require'nvim-tree.config'.nvim_tree_callback

--     vim.g.nvim_tree_bindings = {
--         {key = {"l", "<CR>", "o"}, cb = tree_cb("edit")},
--         {key = "h", cb = tree_cb("close_node")},
--         {key = "v", cb = tree_cb("vsplit")}
--     }
-- end

-- local view = require 'nvim-tree.view'

-- M.toggle_tree = function()
--     if view.win_open() then
--         require'nvim-tree'.close()
--         if package.loaded['bufferline.state'] then
--             require'bufferline.state'.set_offset(0)
--         end
--     else
--         if package.loaded['bufferline.state'] then
--             require'bufferline.state'.set_offset(31, 'File Explorer')
--         end
--         require'nvim-tree'.find_file(true)
--     end

-- end

-- return M