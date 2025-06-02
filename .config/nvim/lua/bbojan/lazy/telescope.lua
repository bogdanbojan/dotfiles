return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.8",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({
            defaults = {
                border = true,
                borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            },
        })

        local builtin = require('telescope.builtin')
        -- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>pf', function()
            builtin.find_files({
                find_command = {
                    "rg", "--files", "--hidden", "--glob", "!vendor/**"
                }
            })
        end)
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        -- vim.keymap.set('n', '<leader>ps', function()
        --     builtin.live_grep()
        --     -- builtin.grep_string({ search = vim.fn.input("Grep > ") })
        -- end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.live_grep({
                additional_args = function()
                    return {
                        "--hidden",
                        "--glob", "!vendor/**"
                    }
                end
            })
        end)
        -- Include hidden files.
        -- vim.keymap.set('n', '<leader>ps', function()
        --     builtin.live_grep({
        --         additional_args = function()
        --             return {
        --                 "--hidden",
        --                 "--glob",
        --                 "**",
        --                 "--glob",
        --                 ".github/**"
        --             }
        --         end
        --     })
        -- end, {})
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>pd', builtin.diagnostics, {})
        vim.keymap.set('n', '<leader>pr', builtin.resume, {})
    end
}
