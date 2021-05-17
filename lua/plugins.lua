local execute = vim.api.nvim_command
local fn = vim.fn

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

    use {"kevinhwang91/nvim-bqf"} -- Quickfix window???
    use {"windwp/nvim-ts-autotag"} -- Auto insert matching html tags.
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"} -- incremental parser

    use {"lervag/vimtex"}
    -- use {'KeitaNakamura/tex-conceal.vim', ft={'tex'}} -- No Need
    use {"iamcco/markdown-preview.nvim", run = ":call mkdp#util#install()"}


    use 'kyazdani42/nvim-web-devicons' -- Just filetype icons
    use {"glepnir/galaxyline.nvim"} -- bottom line
    use {"kyazdani42/nvim-tree.lua"} -- file tree
    use 'romgrk/barbar.nvim' -- Top bar


    -- Telescope
    use {"nvim-lua/popup.nvim"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-telescope/telescope.nvim"}
    use {"nvim-telescope/telescope-fzy-native.nvim"}

    -- Git
    use {"tpope/vim-fugitive"}
    use {"lewis6991/gitsigns.nvim"}


    -- use {"terrortylor/nvim-comment"} -- Toggle comments
    use'tpope/vim-commentary'
    use {"folke/which-key.nvim"}

    use {"vim-test/vim-test"} -- Test suite
    use {"mfussenegger/nvim-dap"}

    use {"mcmartelle/vim-monokai-bold"}
    vim.cmd'colorscheme monokai-bold'
    -- use {"ParamagicDev/vim-medic_chalk"} -- colorscheme
    -- vim.cmd'colorscheme medic_chalk'

    -- use {'dense-analysis/ale'} -- Just use efm-ls
    require("utils")
    require("config.nvim-lspinstall")
    require("lsp")
    require("config.nvim-compe")
    require("config.treesitter")
    require("config.autopairs")
    require("config.vimtex")
    require("config.which-key")
    -- require('nvim_comment').setup()
    require('config.nvim-tree')
    require('config.galaxyline')
    require('config.telescope')
    require('config.gitsigns')

end
)
