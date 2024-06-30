--  This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('itchyny/lightline.vim')

    --  use({
    --      'rose-pine/neovim',
    --      as = 'rose-pine',
    --      config = function()
    --          require("rose-pine").setup()
    --          vim.cmd('colorscheme rose-pine-moon')
    --          vim.g.lightline = {
    --              colorscheme = 'rosepine',
    --              component = {
    --                  filename = '%F'
    --              }
    --          }
    --      end
    --  })
    --

    -- use({
    --     'rebelot/kanagawa.nvim',
    --     as = 'kanagawa',
    --     config = function()
    --         require("kanagawa").setup()
    --         vim.cmd('colorscheme kanagawa-wave')
    --         vim.g.lightline = {
    --             colorscheme = 'kanagawa',
    --             component = {
    --                 filename = '%F'
    --             }
    --         }
    --     end
    -- })


    -- use({
    --     'ellisonleao/gruvbox.nvim',
    --     as = 'gruvbox',
    --     config = function()
    --         require("gruvbox").setup()
    --         vim.cmd('colorscheme gruvbox')
    --         vim.g.lightline = {
    --             colorscheme = 'gruvbox',
    --             component = {
    --                 filename = '%F'
    --             }
    --         }
    --     end
    -- })

    use({
        'ishan9299/nvim-solarized-lua',
        as = 'solarized',
        config = function()
            -- require("solarized").setup()
            vim.cmd('colorscheme solarized')
            vim.cmd('set background=dark')
            vim.g.lightline = {
                colorscheme = 'solarized',
                component = {
                    filename = '%F'
                }
            }
        end
    })

    -- --   use({
    -- --       'sainnhe/everforest',
    --       as = 'everforest',
    --       config = function()
    --           vim.g.everforest_background = 'soft'
    --           vim.cmd('colorscheme everforest')
    --       end
    --   })

    -- use({
    --     'nvim-lualine/lualine.nvim',
    --     as       = 'lualine',
    --     requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    --     config   = function()
    --         require('lualine').setup({
    --             -- options = { theme = 'everforest' },
    --             options = { theme = 'rosepine' },
    --             sections = { lualine_c = { { 'filename', path = 3 } } }
    --         })
    --     end
    -- })

    -- use({
    --     'nordtheme/vim',
    --     as = 'nord',
    --     config = function()
    --         vim.cmd('colorscheme nord')
    --     end
    -- })

    --     use({
    --         "catppuccin/nvim",
    --         as = "catppuccin",
    --         config = function()
    --             require("catppuccin").setup({
    --                 flavour = "mocha",
    --             })
    --             -- vim.cmd('colorscheme catppuccin-mocha')
    --             vim.g.lightline = {
    --                 colorscheme = 'catppuccin',
    --                 component = {
    --                     filename = '%F'
    --                 }
    --             }
    --         end
    --     })

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
    --         vim.g.lightline = {
    --             colorscheme = 'iceberg',
    --             component = {
    --                 filename = '%F'
    --             }
    --         }
    --      end
    -- })

    -- use('vim-airline/vim-airline')

    -- use('fatih/vim-go')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
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
    use('mfussenegger/nvim-dap')
    use('leoluz/nvim-dap-go', require('dap-go').setup())
    -- use 'rcarriga/nvim-notify'
    -- use('leoluz/nvim-dap-go')
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
    use('towolf/vim-helm')

    use {
        'pwntester/octo.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require "octo".setup({
                use_local_fs = false,                      -- use local files on right side of reviews
                enable_builtin = false,                    -- shows a list of builtin actions when no action is provided
                default_remote = { "upstream", "origin" }, -- order to try remotes
                default_merge_method = "commit",           -- default merge method which should be used when calling `Octo pr merge`, could be `commit`, `rebase` or `squash`
                ssh_aliases = {},                          -- SSH aliases. e.g. `ssh_aliases = {["github.com-work"] = "github.com"}`
                picker = "telescope",                      -- or "fzf-lua"
                picker_config = {
                    use_emojis = false,                    -- only used by "fzf-lua" picker for now
                    mappings = {                           -- mappings for the pickers
                        open_in_browser = { lhs = "<C-b>", desc = "open issue in browser" },
                        copy_url = { lhs = "<C-y>", desc = "copy url to system clipboard" },
                        checkout_pr = { lhs = "<C-o>", desc = "checkout pull request" },
                        merge_pr = { lhs = "<C-r>", desc = "merge pull request" },
                    },
                },
                comment_icon = "▎", -- comment marker
                outdated_icon = "󰅒 ", -- outdated indicator
                resolved_icon = " ", -- resolved indicator
                reaction_viewer_hint_icon = " ", -- marker for user reactions
                user_icon = " ", -- user icon
                timeline_marker = " ", -- timeline marker
                timeline_indent = "2", -- timeline indentation
                right_bubble_delimiter = "", -- bubble delimiter
                left_bubble_delimiter = "", -- bubble delimiter
                github_hostname = "", -- GitHub Enterprise host
                snippet_context_lines = 4, -- number or lines around commented lines
                gh_cmd = "gh", -- Command to use when calling Github CLI
                gh_env = {}, -- extra environment variables to pass on to GitHub CLI, can be a table or function returning a table
                timeout = 5000, -- timeout for requests between the remote server
                default_to_projects_v2 = false, -- use projects v2 for the `Octo card ...` command by default. Both legacy and v2 commands are available under `Octo cardlegacy ...` and `Octo cardv2 ...` respectively.
                ui = {
                    use_signcolumn = false, -- show "modified" marks on the sign column
                    use_signstatus = true, -- show "modified" marks on the status column
                },
                issues = {
                    order_by = {              -- criteria to sort results of `Octo issue list`
                        field = "CREATED_AT", -- either COMMENTS, CREATED_AT or UPDATED_AT (https://docs.github.com/en/graphql/reference/enums#issueorderfield)
                        direction =
                        "DESC"                -- either DESC or ASC (https://docs.github.com/en/graphql/reference/enums#orderdirection)
                    }
                },
                pull_requests = {
                    order_by = {                           -- criteria to sort the results of `Octo pr list`
                        field = "CREATED_AT",              -- either COMMENTS, CREATED_AT or UPDATED_AT (https://docs.github.com/en/graphql/reference/enums#issueorderfield)
                        direction =
                        "DESC"                             -- either DESC or ASC (https://docs.github.com/en/graphql/reference/enums#orderdirection)
                    },
                    always_select_remote_on_create = false -- always give prompt to select base remote repo when creating PRs
                },
                file_panel = {
                    size = 10,       -- changed files panel rows
                    use_icons = true -- use web-devicons in file panel (if false, nvim-web-devicons does not need to be installed)
                },
                colors = {           -- used for highlight groups (see Colors section below)
                    white = "#ffffff",
                    grey = "#2A354C",
                    black = "#000000",
                    red = "#fdb8c0",
                    dark_red = "#da3633",
                    green = "#acf2bd",
                    dark_green = "#238636",
                    yellow = "#d3c846",
                    dark_yellow = "#735c0f",
                    blue = "#58A6FF",
                    dark_blue = "#0366d6",
                    purple = "#6f42c1",
                },
                mappings_disable_default = false, -- disable default mappings if true, but will still adapt user mappings
                mappings = {
                    issue = {
                        close_issue = { lhs = "<space>ic", desc = "close issue" },
                        reopen_issue = { lhs = "<space>io", desc = "reopen issue" },
                        list_issues = { lhs = "<space>il", desc = "list open issues on same repo" },
                        reload = { lhs = "<C-r>", desc = "reload issue" },
                        open_in_browser = { lhs = "<C-b>", desc = "open issue in browser" },
                        copy_url = { lhs = "<C-y>", desc = "copy url to system clipboard" },
                        add_assignee = { lhs = "<space>aa", desc = "add assignee" },
                        remove_assignee = { lhs = "<space>ad", desc = "remove assignee" },
                        create_label = { lhs = "<space>lc", desc = "create label" },
                        add_label = { lhs = "<space>la", desc = "add label" },
                        remove_label = { lhs = "<space>ld", desc = "remove label" },
                        goto_issue = { lhs = "<space>gi", desc = "navigate to a local repo issue" },
                        add_comment = { lhs = "<space>ca", desc = "add comment" },
                        delete_comment = { lhs = "<space>cd", desc = "delete comment" },
                        next_comment = { lhs = "]c", desc = "go to next comment" },
                        prev_comment = { lhs = "[c", desc = "go to previous comment" },
                        react_hooray = { lhs = "<space>rp", desc = "add/remove 🎉 reaction" },
                        react_heart = { lhs = "<space>rh", desc = "add/remove ❤️ reaction" },
                        react_eyes = { lhs = "<space>re", desc = "add/remove 👀 reaction" },
                        react_thumbs_up = { lhs = "<space>r+", desc = "add/remove 👍 reaction" },
                        react_thumbs_down = { lhs = "<space>r-", desc = "add/remove 👎 reaction" },
                        react_rocket = { lhs = "<space>rr", desc = "add/remove 🚀 reaction" },
                        react_laugh = { lhs = "<space>rl", desc = "add/remove 😄 reaction" },
                        react_confused = { lhs = "<space>rc", desc = "add/remove 😕 reaction" },
                    },
                    pull_request = {
                        checkout_pr = { lhs = "<space>po", desc = "checkout PR" },
                        merge_pr = { lhs = "<space>pm", desc = "merge commit PR" },
                        squash_and_merge_pr = { lhs = "<space>psm", desc = "squash and merge PR" },
                        rebase_and_merge_pr = { lhs = "<space>prm", desc = "rebase and merge PR" },
                        list_commits = { lhs = "<space>pc", desc = "list PR commits" },
                        list_changed_files = { lhs = "<space>pf", desc = "list PR changed files" },
                        show_pr_diff = { lhs = "<space>pd", desc = "show PR diff" },
                        add_reviewer = { lhs = "<space>va", desc = "add reviewer" },
                        remove_reviewer = { lhs = "<space>vd", desc = "remove reviewer request" },
                        close_issue = { lhs = "<space>ic", desc = "close PR" },
                        reopen_issue = { lhs = "<space>io", desc = "reopen PR" },
                        list_issues = { lhs = "<space>il", desc = "list open issues on same repo" },
                        reload = { lhs = "<C-r>", desc = "reload PR" },
                        open_in_browser = { lhs = "<C-b>", desc = "open PR in browser" },
                        copy_url = { lhs = "<C-y>", desc = "copy url to system clipboard" },
                        goto_file = { lhs = "gf", desc = "go to file" },
                        add_assignee = { lhs = "<space>aa", desc = "add assignee" },
                        remove_assignee = { lhs = "<space>ad", desc = "remove assignee" },
                        create_label = { lhs = "<space>lc", desc = "create label" },
                        add_label = { lhs = "<space>la", desc = "add label" },
                        remove_label = { lhs = "<space>ld", desc = "remove label" },
                        goto_issue = { lhs = "<space>gi", desc = "navigate to a local repo issue" },
                        add_comment = { lhs = "<space>ca", desc = "add comment" },
                        delete_comment = { lhs = "<space>cd", desc = "delete comment" },
                        next_comment = { lhs = "]c", desc = "go to next comment" },
                        prev_comment = { lhs = "[c", desc = "go to previous comment" },
                        react_hooray = { lhs = "<space>rp", desc = "add/remove 🎉 reaction" },
                        react_heart = { lhs = "<space>rh", desc = "add/remove ❤️ reaction" },
                        react_eyes = { lhs = "<space>re", desc = "add/remove 👀 reaction" },
                        react_thumbs_up = { lhs = "<space>r+", desc = "add/remove 👍 reaction" },
                        react_thumbs_down = { lhs = "<space>r-", desc = "add/remove 👎 reaction" },
                        react_rocket = { lhs = "<space>rr", desc = "add/remove 🚀 reaction" },
                        react_laugh = { lhs = "<space>rl", desc = "add/remove 😄 reaction" },
                        react_confused = { lhs = "<space>rc", desc = "add/remove 😕 reaction" },
                        review_start = { lhs = "<space>vs", desc = "start a review for the current PR" },
                        review_resume = { lhs = "<space>vr", desc = "resume a pending review for the current PR" },
                    },
                    review_thread = {
                        goto_issue = { lhs = "<space>gi", desc = "navigate to a local repo issue" },
                        add_comment = { lhs = "<space>ca", desc = "add comment" },
                        add_suggestion = { lhs = "<space>sa", desc = "add suggestion" },
                        delete_comment = { lhs = "<space>cd", desc = "delete comment" },
                        next_comment = { lhs = "]c", desc = "go to next comment" },
                        prev_comment = { lhs = "[c", desc = "go to previous comment" },
                        select_next_entry = { lhs = "]q", desc = "move to previous changed file" },
                        select_prev_entry = { lhs = "[q", desc = "move to next changed file" },
                        select_first_entry = { lhs = "[Q", desc = "move to first changed file" },
                        select_last_entry = { lhs = "]Q", desc = "move to last changed file" },
                        close_review_tab = { lhs = "<C-c>", desc = "close review tab" },
                        react_hooray = { lhs = "<space>rp", desc = "add/remove 🎉 reaction" },
                        react_heart = { lhs = "<space>rh", desc = "add/remove ❤️ reaction" },
                        react_eyes = { lhs = "<space>re", desc = "add/remove 👀 reaction" },
                        react_thumbs_up = { lhs = "<space>r+", desc = "add/remove 👍 reaction" },
                        react_thumbs_down = { lhs = "<space>r-", desc = "add/remove 👎 reaction" },
                        react_rocket = { lhs = "<space>rr", desc = "add/remove 🚀 reaction" },
                        react_laugh = { lhs = "<space>rl", desc = "add/remove 😄 reaction" },
                        react_confused = { lhs = "<space>rc", desc = "add/remove 😕 reaction" },
                    },
                    submit_win = {
                        approve_review = { lhs = "<C-a>", desc = "approve review" },
                        comment_review = { lhs = "<C-m>", desc = "comment review" },
                        request_changes = { lhs = "<C-r>", desc = "request changes review" },
                        close_review_tab = { lhs = "<C-c>", desc = "close review tab" },
                    },
                    review_diff = {
                        submit_review = { lhs = "<leader>vs", desc = "submit review" },
                        discard_review = { lhs = "<leader>vd", desc = "discard review" },
                        add_review_comment = { lhs = "<space>ca", desc = "add a new review comment" },
                        add_review_suggestion = { lhs = "<space>sa", desc = "add a new review suggestion" },
                        focus_files = { lhs = "<leader>e", desc = "move focus to changed file panel" },
                        toggle_files = { lhs = "<leader>b", desc = "hide/show changed files panel" },
                        next_thread = { lhs = "]t", desc = "move to next thread" },
                        prev_thread = { lhs = "[t", desc = "move to previous thread" },
                        select_next_entry = { lhs = "]q", desc = "move to previous changed file" },
                        select_prev_entry = { lhs = "[q", desc = "move to next changed file" },
                        select_first_entry = { lhs = "[Q", desc = "move to first changed file" },
                        select_last_entry = { lhs = "]Q", desc = "move to last changed file" },
                        close_review_tab = { lhs = "<C-c>", desc = "close review tab" },
                        toggle_viewed = { lhs = "<leader><space>", desc = "toggle viewer viewed state" },
                        goto_file = { lhs = "gf", desc = "go to file" },
                    },
                    file_panel = {
                        submit_review = { lhs = "<leader>vs", desc = "submit review" },
                        discard_review = { lhs = "<leader>vd", desc = "discard review" },
                        next_entry = { lhs = "j", desc = "move to next changed file" },
                        prev_entry = { lhs = "k", desc = "move to previous changed file" },
                        select_entry = { lhs = "<cr>", desc = "show selected changed file diffs" },
                        refresh_files = { lhs = "R", desc = "refresh changed files panel" },
                        focus_files = { lhs = "<leader>e", desc = "move focus to changed file panel" },
                        toggle_files = { lhs = "<leader>b", desc = "hide/show changed files panel" },
                        select_next_entry = { lhs = "]q", desc = "move to previous changed file" },
                        select_prev_entry = { lhs = "[q", desc = "move to next changed file" },
                        select_first_entry = { lhs = "[Q", desc = "move to first changed file" },
                        select_last_entry = { lhs = "]Q", desc = "move to last changed file" },
                        close_review_tab = { lhs = "<C-c>", desc = "close review tab" },
                        toggle_viewed = { lhs = "<leader><space>", desc = "toggle viewer viewed state" },
                    },
                },
                suppress_missing_scope = {
                    projects_v2 = true,
                }
            })
        end
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {
                fast_wrap = {
                    map = '<M-e>',
                    chars = { '{', '[', '(', '"', "'" },
                    pattern = [=[[%'%"%>%]%)%}%,]]=],
                    end_key = '$',
                    before_key = 'h',
                    after_key = 'l',
                    cursor_pos_before = true,
                    keys = 'qwertyuiopzxcvbnmasdfghjkl',
                    manual_position = true,
                    highlight = 'Search',
                    highlight_grey = 'Comment'
                },
            }
        end
    }

    -- install without yarn or npm
    -- use({
    --     "iamcco/markdown-preview.nvim",
    --     run = function() vim.fn["mkdp#util#install"]() end,
    -- })

    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = {
                "markdown" }
        end,
        ft = { "markdown" },
    })
end)
