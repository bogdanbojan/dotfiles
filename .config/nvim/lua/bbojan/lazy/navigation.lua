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
            vim.g.sandwich_no_default_key_mappings = 1
            vim.g.operator_sandwich_no_default_key_mappings = 1

            vim.api.nvim_set_keymap('n', '<leader>sa', '<Plug>(sandwich-add)', { noremap = true })
            vim.api.nvim_set_keymap('x', '<leader>sa', '<Plug>(sandwich-add)', { noremap = true })
            vim.api.nvim_set_keymap('n', '<leader>sd', '<Plug>(sandwich-delete)', { noremap = true })
            vim.api.nvim_set_keymap('x', '<leader>sd', '<Plug>(sandwich-delete)', { noremap = true })
            vim.api.nvim_set_keymap('n', '<leader>sr', '<Plug>(sandwich-replace)', { noremap = true })
            vim.api.nvim_set_keymap('x', '<leader>sr', '<Plug>(sandwich-replace)', { noremap = true })
        end
    },
    {
        "ggandor/leap.nvim",
        config = function()
            -- First, setup leap with default mappings disabled
            require('leap').setup({
                create_default_mappings = false
            })

            -- Then manually add the mappings we want
            vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
            vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')
            -- You can also add the bidirectional mapping if you use it
            -- vim.keymap.set({'n', 'x', 'o'}, 'gs', '<Plug>(leap-from-window)')
        end
    },

    -- "gpanders/nvim-parinfer"
    -- use('rhysd/git-messenger.vim')
    -- use('towolf/vim-helm')
}
