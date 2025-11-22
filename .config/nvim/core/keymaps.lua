-- Open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "kj", "<Esc>", options)
vim.keymap.set("i", "jk", "<Esc>", options)

-- Save and update
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':update<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

-- Scroll and keep cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Half-page down with centered cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Half-page up with centered cursor
-- Search navigation with centered results
vim.keymap.set("n", "n", "nzzzv")       -- Next search result, centered
vim.keymap.set("n", "N", "Nzzzv")       -- Previous search result, centered

-- Clipboard manipulation
vim.keymap.set("x", "<leader>p", [["_dP]]) -- Paste over selection without changing register
-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Delete without affecting clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Navigation through location list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- Next location, centered
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- Previous location, centered

-- Search and replace shortcuts
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])                   -- Replace word under cursor
vim.keymap.set("v", "<leader>s", '"zy<Esc>:%s/<C-R>z//g<Left><Left>')                                      -- Replace selected text

vim.keymap.set("n", "<leader>+", "<C-a>")                                                                  -- Increment number under cursor
vim.keymap.set("n", "<leader>-", "<C-x>")                                                                  -- Decrement number under cursor

vim.keymap.set("n", "<leader>sv", "<C-w>v")                                                                -- Split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s")                                                                -- Split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=")                                                                -- Make split windows equal size
vim.keymap.set("n", "<leader>sx", ":close<CR>")                                                            -- Close current window

vim.keymap.set("n", "<leader>swd", ":tcd %:p:h<CR>")                                                       -- Set working dir to current file's directory

vim.api.nvim_set_keymap('n', '<leader>rn', ':set relativenumber<CR>', { noremap = true, silent = true })   -- Set relative number
vim.api.nvim_set_keymap('n', '<leader>an', ':set norelativenumber<CR>', { noremap = true, silent = true }) -- Set absolute number

vim.keymap.set("n", "<leader>to", ":tabnew<CR>")                                                           -- Open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")                                                         -- Close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")                                                             -- Next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")                                                             -- Previous tab

-- Whitespace visualization
vim.keymap.set("n", "<leader>`", function()
	vim.cmd("set listchars+=tab:!·,space:·,trail:· | set list")
end) -- Show whitespace characters
vim.keymap.set("n", "<leader>``", function()
	vim.cmd("set nolist")
end) -- Hide whitespace characters

-- Syntax highlighting toggles
vim.keymap.set("n", "<leader>sof", function()
	vim.cmd("syntax off")
end) -- Turn off syntax highlighting
vim.keymap.set("n", "<leader>son", function()
	vim.cmd("syntax on")
end) -- Turn on syntax highlighting
