require "nvim-treesitter.configs".setup({
	ensure_installed = { "go", "gomod", "go", "vim", "bash", "toml", "dockerfile", "python", "lua" },
	highlight = { enable = true },
    auto_install = false,
    sync_install = false,
})

require("treesitter-context").setup({
  -- multiline_threshold = 1,
})
