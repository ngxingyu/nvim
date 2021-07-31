O = {
    auto_close_tree = 1,
    auto_complete = true,
    colorscheme = 'medic_chalk',
    hidden_files = true,
    wrap_lines = false,
    number = true,
    relative_number = true,
    shell = 'bash',
	timeoutlen = 100,
    -- nvim_tree_disable_netrw = 0, -- "1 by default, disables netrw (must be set before plugin's packadd)

    -- @usage pass a table with your desired languages
    treesitter = {
        ensure_installed = {
            "javascript",
            "html",
            "css",
            "bash",
<<<<<<< HEAD
            "lua",
            "json",
            "python",
            "svelte",
            "dart",
            "typescript",
            "vue",
=======
            -- "lua",
            -- "json",
            -- "python",
            -- "svelte",
            -- "dart",
            -- "typescript",
            -- "vue",
>>>>>>> 5c32a33a8271b25f26fd81a3693bbd90eec8be40
            "yaml",
            "cpp"
        },
        ignore_install = {"latex"},
        highlight = {enabled = true},
        playground = {enabled = true},
        rainbow = {enabled = false}
    },

    -- database = {save_location = '~/.config/nvcode_db', auto_execute = 1},
    python = {
        linter = 'flake8',
        -- @usage can be 'yapf', 'black'
        formatter = 'black',
        autoformat = true,
        isort = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true},
		analysis = {type_checking = "basic", auto_search_paths = true, use_library_code_types = true}
    },
    -- dart = {sdk_path = '/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot'},
    lua = {
        -- @usage can be 'lua-format'
        formatter = 'lua-fmt',
        autoformat = true,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    sh = {
        -- @usage can be 'shellcheck'
        linter = 'shellcheck',
        -- @usage can be 'shfmt'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    tsserver = {
        -- @usage can be 'eslint'
        linter = 'eslint',
        -- @usage can be 'prettier'
        formatter = 'prettier',
        autoformat = true,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    json = {
        -- @usage can be 'prettier'
        formatter = 'prettier',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    tailwindls = {filetypes = {'html', 'css', 'scss', 'javascript', 'typescript', 'svelte'}},--'typescriptreact', 'javascriptreact',
    -- clang = {diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}},
	-- ruby = {
	-- 	diagnostics = {virtualtext = {spacing = 0, prefix = ""}, signs = true, underline = true},
	-- 	filetypes = {'rb', 'erb', 'rakefile'}
	-- },
    css = {formatter = '', autoformat = false, virtual_text = true},
    -- json = {formatter = '', autoformat = false, virtual_text = true},

	dashboard = {
		custom_header = {
'██╗  ██╗██╗███╗   ██╗ ██████╗     ██╗   ██╗██╗   ██╗',
'╚██╗██╔╝██║████╗  ██║██╔════╝     ╚██╗ ██╔╝██║   ██║',
' ╚███╔╝ ██║██╔██╗ ██║██║  ███╗     ╚████╔╝ ██║   ██║',
' ██╔██╗ ██║██║╚██╗██║██║   ██║      ╚██╔╝  ██║   ██║',
'██╔╝ ██╗██║██║ ╚████║╚██████╔╝       ██║   ╚██████╔╝',
'╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝        ╚═╝    ╚═════╝ ',
'                                                    '
},
		footer= {'ngxingyu'}
	}
}

DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

