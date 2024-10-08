local options = { noremap = true }

vim.g.mapleader = " "
vim.keymap.set("i", "kj", "<Esc>", options)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>s", '"zy<Esc>:%s/<C-R>z//g<Left><Left>')
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = false })

vim.keymap.set("n", "<leader>+", "<C-a>")
vim.keymap.set("n", "<leader>-", "<C-x>")

vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", ":close<CR>")
-- Set working dir in current window.
vim.keymap.set("n", "<leader>swd", ":tcd %:p:h<CR>")

-- Because screen sharing and pointing to relative numbers is annoying.
-- Set relative number
vim.api.nvim_set_keymap('n', '<leader>rn', ':set relativenumber<CR>', { noremap = true, silent = true })
-- Set absolute number
vim.api.nvim_set_keymap('n', '<leader>an', ':set norelativenumber<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>to", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")

vim.keymap.set("n", "<leader>tp", ":tabp<CR>")

vim.keymap.set("n", "<leader>`", function()
    vim.cmd("set listchars+=tab:!·,space:·,trail:· | set list")
end)
vim.keymap.set("n", "<leader>``", function()
    vim.cmd("set nolist")
end)

vim.keymap.set("n", "<leader>dw", function()
    vim.diagnostic.config({ virtual_text = false })
end)

vim.keymap.set("n", "<leader>ew", function()
    vim.diagnostic.config({ virtual_text = true })
end)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
