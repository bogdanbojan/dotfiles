--  This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    ---------------------------------------------------------------------------
    -- I prefer lightline.

    use('itchyny/lightline.vim')

    -- use({
    --     'nvim-lualine/lualine.nvim',
    --     as       = 'lualine',
    --     requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    --     config   = function()
    --         require('lualine').setup({
    --             -- options = { theme = 'everforest' },
    --             options = { theme = 'rosepine' },
    --             sections = { lualine_c = { { 'filename', path = 3 } } }
    --         })
    --     end
    -- })

    ---------------------------------------------------------------------------
    -- Various themes.

    use({
        'sainnhe/gruvbox-material',
        as = 'gruvbox-material',
    })
    use({
        'rose-pine/neovim',
        as = 'rose-pine-moon',
    })
    use({
        'cocopon/iceberg.vim',
        as = 'iceberg',
    })
    use({
        'ishan9299/nvim-solarized-lua',
        as = 'solarized',
    })
    ---------------------------------------------------------------------------

    -- use('fatih/vim-go')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('christoomey/vim-tmux-navigator')
    use('szw/vim-maximizer')
    use('tpope/vim-surround')
    use('vim-scripts/ReplaceWithRegister')
    use('Olical/conjure')
    use('wlangstroth/vim-racket')
    use('gpanders/nvim-parinfer')
    use('rhysd/git-messenger.vim')
    use('towolf/vim-helm')

    -- TODO: Re-enable it after you fix the problem.
    -- use {
    --     'pwntester/octo.nvim',
    --     requires = {
    --         'nvim-lua/plenary.nvim',
    --         'nvim-telescope/telescope.nvim',
    --         'nvim-tree/nvim-web-devicons',
    --     },
    -- }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            { 'hrsh7th/cmp-nvim-lsp-signature-help' },
            { 'hrsh7th/cmp-vsnip' },
            { 'hrsh7th/vim-vsnip' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {
                fast_wrap = {
                    map = '<M-e>',
                    chars = { '{', '[', '(', '"', "'" },
                    pattern = [=[[%'%"%>%]%)%}%,]]=],
                    end_key = '$',
                    before_key = 'h',
                    after_key = 'l',
                    cursor_pos_before = true,
                    keys = 'qwertyuiopzxcvbnmasdfghjkl',
                    manual_position = true,
                    highlight = 'Search',
                    highlight_grey = 'Comment'
                },
            }
        end
    }

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = {
                "markdown" }
        end,
        ft = { "markdown" },
    })
end)
