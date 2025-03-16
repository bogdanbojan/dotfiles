-- Set options for key mappings and define space as the leader key
local options = { noremap = true }
vim.g.mapleader = " "

-- Basic editing improvements
-- Exit insert mode with kj (faster than reaching for Escape)
vim.keymap.set("i", "kj", "<Esc>", options)
-- Open Neovim's file explorer with leader+pv
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Moving lines and maintaining selection in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move selected line(s) down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move selected line(s) up

-- Navigation and line manipulation improvements
vim.keymap.set("n", "J", "mzJ`z")       -- Join lines but keep cursor position
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

-- Workflow improvements
vim.keymap.set("n", "Q", "<nop>")                                           -- Disable Ex mode
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- Open tmux sessionizer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)                        -- Format current buffer

-- Commented out navigation through quickfix list
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Navigation through location list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- Next location, centered
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- Previous location, centered

-- Search and replace shortcuts
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- Replace word under cursor
vim.keymap.set("v", "<leader>s", '"zy<Esc>:%s/<C-R>z//g<Left><Left>')                    -- Replace selected text

-- File operations
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = false }) -- Make current file executable

-- Incrementing and decrementing numbers
vim.keymap.set("n", "<leader>+", "<C-a>") -- Increment number under cursor
vim.keymap.set("n", "<leader>-", "<C-x>") -- Decrement number under cursor

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v")     -- Split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s")     -- Split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=")     -- Make split windows equal size
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- Close current window

-- Working directory management
vim.keymap.set("n", "<leader>swd", ":tcd %:p:h<CR>") -- Set working dir to current file's directory

-- Line numbering toggles (helpful for screen sharing)
vim.api.nvim_set_keymap('n', '<leader>rn', ':set relativenumber<CR>', { noremap = true, silent = true })   -- Set relative number
vim.api.nvim_set_keymap('n', '<leader>an', ':set norelativenumber<CR>', { noremap = true, silent = true }) -- Set absolute number

-- Tab management
vim.keymap.set("n", "<leader>to", ":tabnew<CR>")   -- Open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- Close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")     -- Next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")     -- Previous tab
-- Note: The previous tab mapping is duplicated

-- Whitespace visualization
vim.keymap.set("n", "<leader>`", function()
    vim.cmd("set listchars+=tab:!·,space:·,trail:· | set list")
end) -- Show whitespace characters
vim.keymap.set("n", "<leader>``", function()
    vim.cmd("set nolist")
end) -- Hide whitespace characters

-- Diagnostics toggles
vim.keymap.set("n", "<leader>dw", function()
    vim.diagnostic.config({ virtual_text = false })
end) -- Disable diagnostic warnings
vim.keymap.set("n", "<leader>ew", function()
    vim.diagnostic.config({ virtual_text = true })
end) -- Enable diagnostic warnings

-- Syntax highlighting toggles
vim.keymap.set("n", "<leader>sof", function()
    vim.cmd("syntax off")
end) -- Turn off syntax highlighting
vim.keymap.set("n", "<leader>son", function()
    vim.cmd("syntax on")
end) -- Turn on syntax highlighting

vim.keymap.set("n", "<leader>ca", function()
    require("cellular-automaton").start_animation("make_it_rain")
end)

-- Source current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end) -- Source (reload) the current file
