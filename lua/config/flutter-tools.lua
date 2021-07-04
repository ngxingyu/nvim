pcall(function() return require('telescope').load_extension("flutter") end)

pcall(function() return require("flutter-tools").setup {
  experimental = { -- map of feature flags
    lsp_derive_paths = false, -- experimental: Attempt to find the user's flutter SDK
  },
  debugger = { -- experimental: integrate with nvim dap
    enabled = true,
  },
  flutter_path = "/home/ngxingyu/snap/flutter/common/flutter/bin/flutter", -- <-- this takes priority over the lookup
  flutter_lookup_cmd = "echo $HOME/snap/flutter/common/flutter/bin/flutter", -- example "dirname $(which flutter)" or "asdf where flutter"
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    highlight = "ErrorMsg", -- highlight for the closing tag
    prefix = "~", -- character to use for close tag e.g. > Widget
    enabled = true -- set to false to disable
  },
  -- dev_log = {
  --   open_cmd = "tabedit", -- command to use to open the log buffer
  -- },
  -- outline = {
  --   open_cmd = "30vnew", -- command to use to open the outline buffer
  -- },
  lsp = {
    cmd = { "dart", O.dart.sdk_path, "--lsp" },
    filetypes = { "dart" },
    on_attach = require'lsp'.on_attach,
    init_options = {
      closingLabels = true,
      flutterOutline = true,
      onlyAnalyzeProjectsWithOpenFiles = false,
      outline = false,
      suggestFromUnimportedLibraries = true
    }
  }
} end)
