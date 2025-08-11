vim.o.winborder = "single"
vim.o.number = true
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.laststatus = 3

vim.g.mapleader = " "

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25


vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@") -- See what this does.
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.nu = true -- See what this does.
vim.o.statusline = "%F"
