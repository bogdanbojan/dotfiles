local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'golangci_lint_ls',
    'gopls',
    'docker_compose_language_service',
    'dockerls',
    'helm_ls',
    'lua_ls',
    'sqlls',
    'vimls',
    'terraformls',
    'html',
    'yamlls',
    'jedi_language_server',
    'taplo',
    'rust_analyzer',
    'bashls',
    'jsonls',
    'ltex',
    'bufls',
})

-- Import libraries on write for Go.
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    callback = function()
        vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
    end
})


lsp.nvim_workspace()

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    -- Helm charts get confused and lots of YAML errors appear without this.
    if vim.bo[bufnr].buftype ~= "" or vim.bo[bufnr].filetype == "helm" then
        vim.diagnostic.enable(false)
    end

    vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>vre", function() vim.diagnostic.setqflist() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- golangci-lint-langserver
-- local lspconfig = require 'lspconfig'
-- local configs = require 'lspconfig/configs'
--
-- if not configs.golangcilsp then
--     configs.golangcilsp = {
--         default_config = {
--             cmd = { 'golangci-lint-langserver' },
--             root_dir = lspconfig.util.root_pattern('.git', 'go.mod'),
--             init_options = {
--                 command = { "golangci-lint", "run", "--allow-parallel-runners", "--enable-all", "--disable", "lll",
--                     "--out-format", "json",
--                     "--issues-exit-code=1" },
--             }
--         },
--     }
-- end
-- lspconfig.golangci_lint_ls.setup {
--     filetypes = { 'go', 'gomod' }
-- }

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
