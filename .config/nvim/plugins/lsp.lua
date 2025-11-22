vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end)
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder)
vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder)
vim.keymap.set('n', '<leader>wl', function()
	print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end)
vim.keymap.set("n", "<leader>wv", function() vim.lsp.buf.workspace_symbol() end)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>vre", function() vim.diagnostic.setqflist() end)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end)
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end)

require("mason").setup()
require("mason-lspconfig").setup()

vim.lsp.enable({
	'lua_ls',
	'gopls',
	'golangci_lint_ls',
	'docker_compose_language_service',
	'dockerls',
	'helm_ls',
	'lua_ls',
	'sqls',
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
})
