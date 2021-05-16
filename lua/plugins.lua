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
        use "hrsh7th/nvim-compe"
        use "windwp/nvim-autopairs" -- Auto insert matching pair for brackets
        use "hrsh7th/vim-vsnip" -- Custom snippets
        use "rafamadriz/friendly-snippets" -- Some generic snippets

        use {"windwp/nvim-ts-autotag"} -- Auto insert matching html tags.
        use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"} -- incremental parser

        -- use {'dense-analysis/ale'} -- Just use efm-ls
        
        require("config.nvim-lspinstall")
        require("lsp")
        require("config.nvim-compe")
        require("config.treesitter")
        require("config.autopairs")

        

    end
)