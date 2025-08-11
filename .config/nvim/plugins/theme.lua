require("catppuccin").setup({
    bold = false,
})
vim.cmd("colorscheme catppuccin")

vim.cmd('highlight! link FloatBorder Normal')
vim.cmd('highlight! link NormalFloat Normal')
vim.cmd('highlight! link Pmenu Normal')
vim.cmd('highlight! link PmenuSel Visual')
vim.cmd('highlight! link SnippetTabstop Normal')

-- local highlights = {
--     SSearch       = { bg = "#7e98e8", fg = "#141415", bold = true },
--     IncSearch     = { bg = "#7e98e8", fg = "#141415", bold = true },
--     Visual        = { bg = "#7e98e8", fg = "#141415" },
--     YankHighlight = { bg = "#7e98e8", fg = "#141415" },
-- }
--
-- for group, opts in pairs(highlights) do
--     vim.api.nvim_set_hl(0, group, opts)
-- end
