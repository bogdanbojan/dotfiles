-- Acme
vim.cmd('colorscheme acme')
vim.g.acme_style = "plain"
vim.g.lightline = {
    colorscheme = 'parchment',
    component = {
        filename = '%F'
    }
}


-- Set all LSP Diagnostic colors to black
local black = "#000000"

vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultError", { fg = black })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultWarning", { fg = black })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultInformation", { fg = black })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultHint", { fg = black })

vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineError", { fg = black, undercurl = true })
vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineWarning", { fg = black, undercurl = true })
vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineInformation", { fg = black, undercurl = true })

vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineHint", { fg = black, undercurl = true })

-- (Optional) Override other related highlights
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = black })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = black })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = black })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = black })

vim.api.nvim_set_hl(0, "@variable", { fg = "#000000" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#cceeff" })
-- These changes are for the PR diff.
vim.api.nvim_set_hl(0, 'DiffChange', {
    fg = '#000000',  -- Black text
    bg = '#eeeecc'   -- Your vscYellow/vscPopupHighlightGray color
})

vim.api.nvim_set_hl(0, 'DiffText', {

    fg = '#000000',  -- Black text
    bg = '#cccc44',  -- Your vscLightYellow color
})

vim.cmd('highlight! link FloatBorder Normal')
vim.cmd('highlight! link NormalFloat Normal')
vim.cmd('highlight! link Pmenu Normal')
vim.cmd('highlight! link PmenuSel Visual')
vim.cmd('highlight! link SnippetTabstop Normal')

vim.api.nvim_set_hl(0, 'Folded', { fg = '#000000', bg = '#eaffff' })
vim.api.nvim_set_hl(0, 'QuickFixLine', { fg = '#000000', bg = '#cceeff' })
