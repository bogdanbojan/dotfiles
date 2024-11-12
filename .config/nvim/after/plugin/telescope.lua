local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.live_grep({
        additional_args = function()
            return {
                "--hidden",
                "--glob",
                "**",
                "--glob",
                ".github/**"
            }
        end
    })
end, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>pd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>pr', builtin.resume, {})
