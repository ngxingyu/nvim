pcall(function() return require'lspconfig'.dartls.setup{
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
} end)
