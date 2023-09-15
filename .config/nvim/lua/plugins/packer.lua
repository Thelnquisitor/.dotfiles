-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.2",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },    -- Required
            { "williamboman/mason.nvim" },  -- Optional
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" }, -- Required
            { "hrsh7th/cmp-nvim-lsp" }, -- Required
            { "L3MON4D3/LuaSnip" }, -- Required
        },
    })

    use({ "EdenEast/nightfox.nvim" })

    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional
        },
    })

    use({ "christoomey/vim-tmux-navigator" })
    use({ "nvim-lua/plenary.nvim" })
    use({ "jose-elias-alvarez/null-ls.nvim" })

    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup({
                ignore = "^$",
            })
        end,
    })
end)
