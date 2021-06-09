require("which-key").setup {
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = true, -- adds help for operators like d, y, ...
            motions = true, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = false -- bindings for prefixed with g
        }
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+" -- symbol prepended to a group
    },
    window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
        padding = {2, 2, 2, 2} -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = {min = 4, max = 25}, -- min and max height of the columns
        width = {min = 20, max = 50}, -- min and max width of the columns
        spacing = 3 -- spacing between columns
    },
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
    -- triggers = {"<leader>"}
}

local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false -- use `nowait` when creating keymaps
}

-- Set leader
-- vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- explorer
-- vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- telescope
-- vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files<CR>', {noremap = true, silent = true})

-- dashboard
-- vim.api.nvim_set_keymap('n', '<Leader>;', ':Dashboard<CR>', {noremap = true, silent = true})

-- Comments
-- vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})

-- close buffer

-- TODO create entire treesitter section

local mappings = {
    ["w"] = "Write",
    -- ["q"] = {"<cmd>q!<cr>","Close split"},
    ["c"] = "Close Buffer",
    ["f"] = {":Telescope find_files<CR>","Find File"},
    ["h"] = "No Highlight",
    d = {
        name = "+Debug",
        b = {"<cmd>DebugToggleBreakpoint<cr>", "Toggle Breakpoint"},
        c = {"<cmd>DebugContinue<cr>", "Continue"},
        i = {"<cmd>DebugStepInto<cr>", "Step Into"},
        o = {"<cmd>DebugStepOver<cr>", "Step Over"},
        r = {"<cmd>DebugToggleRepl<cr>", "Toggle Repl"},
        s = {"<cmd>DebugStart<cr>", "Start"}
    },
    g = {
        name = "+Git",
        R = {"<cmd>ResetBuffer<cr>", "Reset Buffer"},
        j = {"<cmd>NextHunk<cr>", "Next Hunk"},
        l = {"<cmd>Gvdiffsplit<cr>", "Vdiffsplit"},
        k = {"<cmd>PrevHunk<cr>", "Prev Hunk"},
        p = {"<cmd>PreviewHunk<cr>", "Preview Hunk"},
        r = {"<cmd>ResetHunk<cr>", "Reset Hunk"},
        s = {"<cmd>StageHunk<cr>", "Stage Hunk"},
        u = {"<cmd>UndoStageHunk<cr>", "Undo Stage Hunk"},
        o = {"<cmd>Telescope git_status<cr>", "Open changed file"},
        S = {"<cmd>Telescope git_stash<cr>", "Open stash"},
        b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
        c = {"<cmd>Telescope git_commits<cr>", "Checkout commit"},
        C = {"<cmd>Telescope git_bcommits<cr>", "Checkout commit(for current file)"},
    },
    t = {
        name = "Test",
        n = {"<cmd>TestNearest<cr>", "Run nearest test"},
        f = {"<cmd>TestFile<cr>", "Run all tests in file"},
        s = {"<cmd>TestSuite<cr>", "Run test suite"},
        l = {"<cmd>TestLast<cr>", "Run Last Test"},
        g = {"<cmd>TestVisit<cr>", "Visit test file"},
    },
    b = {
        name="Bash",
        l = {"<cmd>vnew +terminal<cr>", "Split terminal right"},
        j = {"<cmd>new +terminal<cr>", "Split terminal below"},
        t = {"<cmd>tabnew +terminal<cr>", "New tab terminal"}
    },
    s = {
        name = "+Search",
        b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
        c = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>Telescope find_files<cr>", "Find File"},
        m = {"<cmd>Telescope marks<cr>", "Marks"},
        M = {"<cmd>Telescope man_pages<cr>", "Man Pages"},
        r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
        R = {"<cmd>Telescope registers<cr>", "Registers"},
        t = {"<cmd>Telescope live_grep<cr>", "Text"},
        s = {"<cmd>SessionSave<cr>", "Save session"},
        l = {"<cmd>SessionLoad<cr>", "Load session"}
    },
    F = {
        name = "Flutter",
        o = {"<cmd>FlutterOutline<cr>", "FlutterOutline"},
        d = {"<cmd>FlutterDevices<cr>", "FlutterDevices"},
        r = {"<cmd>FlutterReload<cr>", "FlutterReload"},
        R = {"<cmd>FlutterRestart<cr>", "FlutterRestart"},
        q = {"<cmd>FlutterQuit<cr>", "FlutterQuit"}
    },
    -- S = {name = "+Session", s = {"<cmd>SessionSave<cr>", "Save Session"}, l = {"<cmd>SessionLoad<cr>", "Load Session"}}
}

local wk = require("which-key")
wk.register(mappings, opts)

_G.whichkeyTex = function()
  local buf = vim.api.nvim_get_current_buf()
  wk.register({
    l = {
            name = "+LSP",
            a = {"Vimtex context menu", buffer = buf},
            i = {"Vimtex Info", buffer = buf},
            l = {"Vimtex Compile", buffer = buf},
            q = {"Vimtex Log", buffer = buf},
            t = {"Vimtex toggle TOC", buffer = buf},
            x = {"Vimtex reload", buffer = buf},
            s = {"Vimtex toggle main", buffer = buf},
        },
      }, opts)
end

vim.cmd(([[
autocmd FileType tex lua whichkeyTex()
]]))
