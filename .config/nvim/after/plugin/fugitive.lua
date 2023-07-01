vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("n", "<leader>gd", function()
    vim.cmd("Gvdiffsplit")
end)

