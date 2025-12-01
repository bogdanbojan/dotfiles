-- If "Model not found" error, there's an issue with packer:
-- https://github.com/CopilotC-Nvim/CopilotChat.nvim/issues/1184
vim.cmd.packadd("copilot.vim")
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_filetypes = {
    ["*"] = false,
}

vim.keymap.set('i', '<C-g>', '<Plug>(copilot-suggest)')
vim.keymap.set("i", "<Tab>", 'copilot#Accept("<CR>")',
    { expr = true, silent = true, script = true, replace_keycodes = false })

vim.keymap.set("i", "<C-w>", "copilot#AcceptWord()", { expr = true, silent = true })
vim.keymap.set("i", "<C-l>", "copilot#AcceptLine()", { expr = true, silent = true })

require('CopilotChat').setup({
    debug = false,
    show_help = "yes", -- At least for now.
    model = "gpt-5.1",
    build = "make tiktoken",
    mappings = {
        reset = {
            normal = "<C-x>",
            insert = "<C-x>",
        }
    },

    window = {
        border = 'single',
    },

    headers = {
        user = 'Funes',
        assistant = 'Borges',
    }
})

vim.keymap.set({ "n", "v" }, "<C-c>e", "<cmd>CopilotChatExplain<cr>", { desc = "CopilotChat - Explain code" })
vim.keymap.set({ "n", "v" }, "<C-c>r", "<cmd>CopilotChatReview<cr>", { desc = "CopilotChat - Review code" })
vim.keymap.set({ "n", "v" }, "<C-c>f", "<cmd>CopilotChatFix<cr>", { desc = "CopilotChat - Fix code" })
vim.keymap.set({ "n", "v" }, "<C-c>t", "<cmd>CopilotChatTests<cr>", { desc = "CopilotChat - Generate tests" })
vim.keymap.set({ "n", "v" }, "<C-c>d", "<cmd>CopilotChatDocs<cr>", { desc = "CopilotChat - Generate docs" })
vim.keymap.set({ "n", "v" }, "<C-c>o", "<cmd>CopilotChatOptimize<cr>", { desc = "CopilotChat - Optimize code" })
vim.keymap.set({ "n", "v" }, "<C-c>c", "<cmd>CopilotChat<cr>", { desc = "CopilotChat - Open chat" })
vim.keymap.set({ "n", "v" }, "<C-c>x", "<cmd>CopilotChatToggle<cr>", { desc = "CopilotChat - Toggle chat" })
