return {
    {
        'mireq/luasnip-snippets',
        dependencies = { 'L3MON4D3/LuaSnip' },
        init = function()
            -- Mandatory setup function
            require('luasnip_snippets.common.snip_utils').setup()
        end

    },

    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",

        -- luasnip-snippets requires pynvim.
        dependencies = { "rafamadriz/friendly-snippets" },

        config = function()
            local ls = require("luasnip")
            ls.filetype_extend("go", { "gosnippets" })

            ls.setup({
                -- Required to automatically include base snippets, like "c" snippets for "cpp"
                load_ft_func = require('luasnip_snippets.common.snip_utils').load_ft_func,
                ft_func = require('luasnip_snippets.common.snip_utils').ft_func,
                -- To enable auto expansin
                enable_autosnippets = true,
                -- Uncomment to enable visual snippets triggered using <c-x>
                -- store_selection_keys = '<c-x>',
            })

            vim.keymap.set({ "i" }, "<C-l>e", function() ls.expand() end, { silent = true })

            vim.keymap.set({ "i", "s" }, "<C-l>;", function() ls.jump(1) end, { silent = true })
            vim.keymap.set({ "i", "s" }, "<C-l>,", function() ls.jump(-1) end, { silent = true })

            vim.keymap.set({ "i", "s" }, "<C-E>", function()
                if ls.choice_active() then
                    ls.change_choice(1)
                end
            end, { silent = true })
        end,
    }
}
