local markdown = require("render-markdown")

markdown.setup({
    enabled = false,
    file_types = { "markdown", "codecompanion" },
})

vim.keymap.set("n", "<leader>mr", function() markdown.buf_toggle() end )
