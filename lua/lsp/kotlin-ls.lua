--- default config for gradle-projects of the
--- kotlin-language-server: https://github.com/fwcd/kotlin-language-server
---
--- This server requires vim to be aware of the kotlin-filetype.
--- You could refer for this capability to:
--- 	https://github.com/udalov/kotlin-vim (recommended)
--- 	Note that there is no LICENSE specified yet.

local util = pcall(function() return require 'lspconfig/util' end)

local bin_name = DATA_PATH .. "/lspinstall/kotlin/language-server/server/build/install/server/bin/kotlin-language-server"
if vim.fn.has('win32') == 1 then
  bin_name = bin_name..".bat"
end

local root_files = {
  'settings.gradle',       -- Gradle (multi-project)
  'settings.gradle.kts',   -- Gradle (multi-project)
  'build.xml',             -- Ant
  'pom.xml',               -- Maven
}

local fallback_root_files = {
  'build.gradle',          -- Gradle
  'build.gradle.kts',      -- Gradle
}

pcall(function() return require'lspconfig'.kotlin_language_server.setup {
    cmd = {bin_name},
    on_attach = require'lsp'.on_attach,
    root_dir = function(fname)
      return util.root_pattern(unpack(root_files))(fname) or
      util.root_pattern(unpack(fallback_root_files))(fname)
    end
} end)

