-- Setup border configuration
local border = "single"

-- Define LSP handlers with the custom border for hover and signatureHelp
local handlers = {
    ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
    ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

-- Override the global floating preview function to use the custom border
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or border
    return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

local cmp = require('cmp')

if cmp then
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    local single_border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }

    -- Load luasnip snippets if available
    local luasnip_vscode = require("luasnip.loaders.from_vscode")
    if luasnip_vscode then
        luasnip_vscode.lazy_load()
    end

    cmp.setup({
        window = {
            completion = { border = single_border },
            documentation = { border = single_border },
        },
        snippet = {
            expand = function(args)
                local luasnip = require('luasnip')
                if luasnip then
                    luasnip.lsp_expand(args.body)
                end
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<C-y>'] = cmp.mapping.confirm({ select = true }),
            ["<C-Space>"] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
        }, {
            { name = 'buffer' },
        })
    })
end

-- Configure diagnostics
vim.diagnostic.config({
    float = {
        focusable = false,
        style = "minimal",
        border = "single",
        source = "always",
        header = "",
        prefix = "",
    },
})
