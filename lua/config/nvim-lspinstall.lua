-- 1. get the config for this server from nvim-lspconfig and adjust the cmd path.
--    relative paths are allowed, lspinstall automatically adjusts the cmd and cmd_cwd for us!
<<<<<<< HEAD
local status, config = pcall(function() return require 'lspconfig'.jdtls.document_config end)
if(status) then
  require'lspconfig/configs'.jdtls = nil -- important, unset the loaded config again
  -- config.default_config.cmd[1] = "./node_modules/.bin/bash-language-server"

  -- 2. extend the config with an install_script and (optionally) uninstall_script
  require'lspinstall/servers'.jdtls = vim.tbl_extend('error', config, {
      -- lspinstall will automatically create/delete the install directory for every server
      install_script = [[
        git clone https://github.com/eclipse/eclipse.jdt.ls.git
        cd eclipse.jdt.ls
        ./mvnw clean verify
    ]],
      uninstall_script = nil -- can be omitted
  })

  require'lspinstall/servers'.kotlin = vim.tbl_extend('error', config, {
      install_script = [[
        git clone https://github.com/fwcd/kotlin-language-server.git language-server
        cd language-server
      ./gradlew :server:installDist
=======

local status, config = pcall(function() return require 'lspconfig'.jdtls.document_config end)
if(status) then
  require'lspconfig/configs'.jdtls = nil -- important, unset the loaded config again
  -- config.default_config.cmd[1] = "./node_modules/.bin/bash-language-server"

  -- 2. extend the config with an install_script and (optionally) uninstall_script
  require'lspinstall/servers'.jdtls = vim.tbl_extend('error', config, {
      -- lspinstall will automatically create/delete the install directory for every server
      install_script = [[
        git clone https://github.com/eclipse/eclipse.jdt.ls.git
        cd eclipse.jdt.ls
        ./mvnw clean verify
>>>>>>> 5c32a33a8271b25f26fd81a3693bbd90eec8be40
    ]],
      uninstall_script = nil -- can be omitted
  })

<<<<<<< HEAD
=======
  require'lspinstall/servers'.kotlin = vim.tbl_extend('error', config, {
      install_script = [[
        git clone https://github.com/fwcd/kotlin-language-server.git language-server
        cd language-server
      ./gradlew :server:installDist
    ]],
      uninstall_script = nil -- can be omitted
  })

>>>>>>> 5c32a33a8271b25f26fd81a3693bbd90eec8be40
  require'lspinstall'.setup()
end
