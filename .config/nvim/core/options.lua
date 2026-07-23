vim.o.winborder = "single"
vim.o.number = true
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.laststatus = 3

vim.g.mapleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@") -- See what this does.
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.nu = true -- See what this does.
vim.o.statusline = "%F"

vim.opt.wrap = false

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.updatetime = 50
