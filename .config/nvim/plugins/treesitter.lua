require "nvim-treesitter.configs".setup({
	ensure_installed = { "go", "gomod", "go", "vim", "bash", "toml", "dockerfile", "python", "lua" },
	highlight = { enable = true }
})
