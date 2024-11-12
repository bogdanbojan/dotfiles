--  This file can be loaded by calling `lua require('plugins')` from your init.vim.

-- Only required if you have packer configured as `opt`.
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    ---------------------------------------------------------------------------
    -- I prefer lightline.

    use('itchyny/lightline.vim')

    ---------------------------------------------------------------------------
    -- Various themes.

    use({
        'sainnhe/gruvbox-material',
        as = 'gruvbox-material',
    })

    use({
        'morhetz/gruvbox',
        as = 'gruvbox',
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

    use({
        'sainnhe/everforest',
        as = 'everforest',
    })

    use({
        'zenbones-theme/zenbones.nvim',
        as = 'zenbones',
        requires = { 'rktjmp/lush.nvim' },
    })

    use({
        'rebelot/kanagawa.nvim',
        as = 'kanagawa',
    })

    ---------------------------------------------------------------------------

    use('fatih/vim-go')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('christoomey/vim-tmux-navigator')
    use('szw/vim-maximizer')
    use('vim-scripts/ReplaceWithRegister')
    use('Olical/conjure')
    use('wlangstroth/vim-racket')
    use('gpanders/nvim-parinfer')
    use('rhysd/git-messenger.vim')
    use('towolf/vim-helm')
    -- TODO: Move the configuration in after/plugin.
    use {
        'machakann/vim-sandwich',
        config = function()
            -- Disable default keymappings because they conflict with leap.
            vim.g.sandwich_no_default_key_mappings = 1
            vim.g.operator_sandwich_no_default_key_mappings = 1

            vim.api.nvim_set_keymap('n', '<leader>sa', '<Plug>(sandwich-add)', { noremap = true })
            vim.api.nvim_set_keymap('x', '<leader>sa', '<Plug>(sandwich-add)', { noremap = true })
            vim.api.nvim_set_keymap('n', '<leader>sd', '<Plug>(sandwich-delete)', { noremap = true })
            vim.api.nvim_set_keymap('x', '<leader>sd', '<Plug>(sandwich-delete)', { noremap = true })
            vim.api.nvim_set_keymap('n', '<leader>sr', '<Plug>(sandwich-replace)', { noremap = true })
            vim.api.nvim_set_keymap('x', '<leader>sr', '<Plug>(sandwich-replace)', { noremap = true })
        end
    }

    use {
        'ggandor/leap.nvim',
        config = function()
            require('leap').create_default_mappings()
        end,
    }

    -- use {
    --     'Exafunction/codeium.vim',
    --     config = function()
    --         vim.keymap.set('i', '<C-l>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
    --         vim.keymap.set('i', '<C-f>', function() return vim.fn['codeium#CycleCompletions'](1) end,
    --             { expr = true, silent = true })
    --         vim.keymap.set('i', '<C-b>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
    --             { expr = true, silent = true })
    --         vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    --     end
    -- }

    use {
        'pwntester/octo.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'nvim-tree/nvim-web-devicons',
        },
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        -- TODO: Check what version to use - maybe switch to 4.
        branch = 'v4.x',
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

    -- TODO: Configure this more in the future.
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
