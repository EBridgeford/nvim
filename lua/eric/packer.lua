vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use({
        "rebelot/kanagawa.nvim",
        as = "kanagawa",
        config = function()
            vim.cmd('colorscheme kanagawa')
        end
    })
      -- Autocompletion framework
    use("hrsh7th/nvim-cmp")
    use({
        -- cmp LSP completion
        "hrsh7th/cmp-nvim-lsp",
        -- cmp Snippet completion
        "hrsh7th/cmp-vsnip",
        -- cmp Path completion
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
            after = { "hrsh7th/nvim-cmp" },
            requires = { "hrsh7th/nvim-cmp" },
    })
    use("L3MON4D3/LuaSnip")
    use("neovim/nvim-lspconfig")
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("lukas-reineke/indent-blankline.nvim")
end)
