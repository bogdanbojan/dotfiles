require("mason-lspconfig").setup({
    ensure_installed = {
        'lua_ls',
        'rust_analyzer',
        'gopls',
        'golangci_lint_ls',

        'docker_compose_language_service',
        'dockerls',
        'helm_ls',
        'sqls',
        'vimls',
        -- 'terraformls',

        'html',
        'yamlls',
        'jedi_language_server',
        'taplo',
        'rust_analyzer',
        'bashls',
        'jsonls',
    },
    check_outdated_packages_on_open = false,
    handlers = {
        function(server_name)         -- default handler (optional)
            require("lspconfig")[server_name].setup {
                capabilities = capabilities,
                on_attach = on_attach,
            }
        end,
    }
})
