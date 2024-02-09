--  This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- use({
--     'rose-pine/neovim',
--     as = 'rose-pine',
--     config = function()
--         require("rose-pine").setup()
--         vim.cmd('colorscheme rose-pine')
--     end
-- })

use({
    'nordtheme/vim',
    as = 'nord',
    config = function()
        vim.cmd('colorscheme nord')
    end
})

-- use({
--     'AlexvZyl/nordic.nvim',
--     as = 'nordic',
--     config = function()
--         vim.cmd('colorscheme nordic')
--     end
-- })

-- use({
--     'EdenEast/nightfox.nvim',
--     as = 'nightfox',
--     config = function()
--         vim.cmd('colorscheme nightfox')
--     end
-- })

-- use({'mcchrish/zenbones.nvim',
--      as = 'zenbones',
--      requires = "rktjmp/lush.nvim",
--      config = function()
--         vim.cmd('colorscheme tokyobones')
--      end
-- })

-- use({'cocopon/iceberg.vim',
--      as = 'iceberg',
--      config = function()
--         vim.cmd('colorscheme iceberg')
--      end
-- })

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('ThePrimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use('christoomey/vim-tmux-navigator')
use('szw/vim-maximizer')
use('tpope/vim-surround')
use('vim-scripts/ReplaceWithRegister')
use('Olical/conjure')
use('wlangstroth/vim-racket')
use('gpanders/nvim-parinfer')
use('rhysd/git-messenger.vim')
use('leoluz/nvim-dap-go', require('dap-go').setup())
use('mfussenegger/nvim-dap')
use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}

-- install without yarn or npm
-- use({
--     "iamcco/markdown-preview.nvim",
--     run = function() vim.fn["mkdp#util#install"]() end,
-- })

use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

end)
