return {
    {
        "christoomey/vim-tmux-navigator",
    },
    {
        "szw/vim-maximizer",
    },

    -- Brackets/Pairs/Etc.
    {
        "machakann/vim-sandwich",
        config = function()
            -- Disable default keymappings because they conflict with leap.
            -- vim.g.sandwich_no_default_key_mappings = 1
            -- vim.g.operator_sandwich_no_default_key_mappings = 1

            vim.api.nvim_set_keymap('n', '<leader>sa', '<Plug>(sandwich-add)', { noremap = true })
            vim.api.nvim_set_keymap('x', '<leader>sa', '<Plug>(sandwich-add)', { noremap = true })
            vim.api.nvim_set_keymap('n', '<leader>sd', '<Plug>(sandwich-delete)', { noremap = true })
            vim.api.nvim_set_keymap('x', '<leader>sd', '<Plug>(sandwich-delete)', { noremap = true })
            vim.api.nvim_set_keymap('n', '<leader>sr', '<Plug>(sandwich-replace)', { noremap = true })
            vim.api.nvim_set_keymap('x', '<leader>sr', '<Plug>(sandwich-replace)', { noremap = true })
        end
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {
            highlight = {
                backdrop = false, -- Prevents graying out non-matching text
            },
            modes = {
                char = {
                    enabled = false, -- Disables Flash for f, t, F, T motions
                },
            },
        },
        keys = {
            { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
            { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
            { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
            { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
        },
    },
    -- "gpanders/nvim-parinfer"
    -- use('rhysd/git-messenger.vim')
    -- use('towolf/vim-helm')
}
