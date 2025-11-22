local augroup = vim.api.nvim_create_augroup
local bbojanGroup = augroup('bbojan', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({ "BufWritePre" }, {
    group = bbojanGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})


autocmd("BufWritePre", {
    group = bbojanGroup,
    pattern = "*.go",
    callback = function()
        vim.lsp.buf.format({ async = false })
        vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
    end,
})
