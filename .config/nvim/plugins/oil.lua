require("oil").setup({
	default_file_explorer = true,
	keymaps = {
		["<C-h>"] = false,
		["<C-j>"] = false,
		["<C-k>"] = false,
		["<C-l>"] = false,
	},
	view_options = {
		show_hidden = true,
	},
})

vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>")
