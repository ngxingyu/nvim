local execute = vim.api.nvim_command
local fn = vim.fn
local g = vim.g

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute "packadd packer.nvim"
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(
    function(use)
        use "wbthomason/packer.nvim" -- Packer can manage itself as an optional plugin
        use "neovim/nvim-lspconfig" -- Builtin LSP package
        use {"kabouzeid/nvim-lspinstall"}
        require("config.nvim-lspinstall")
        require("lsp")

        -- use {
        --     'w0rp/ale',
        --     ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
        --     cmd = 'ALEEnable',
        --     config = 'vim.cmd[[ALEEnable]]'
        -- }

    end
)