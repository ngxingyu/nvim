require('telescope').load_extension("flutter")

require("flutter-tools").setup {
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
  -- lsp = {
  --   on_attach = my_custom_on_attach,
  --   capabilities = my_custom_capabilities -- e.g. lsp_status capabilities
  --   settings = {
  --     showTodos = true,
  --     completeFunctionCalls = true -- NOTE: this is WIP and doesn't work currently
  --   }
  -- }
}
