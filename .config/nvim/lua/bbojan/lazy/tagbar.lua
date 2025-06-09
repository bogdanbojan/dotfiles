return {
    --[[
            Taken from here: https://cockroachlabs.atlassian.net/wiki/spaces/CRDB/pages/73138420/Radu+s+vim+setup

            Make sure to install:
            - universal-ctags *not sure about this one
            - exuberant-ctags
            - github.com/jstemmer/gotags
        ]]
    'preservim/tagbar',
    cmd = "TagbarToggle",
    keys = {
        { "<leader>tb", "<cmd>TagbarToggle<CR>" },
    },
    config = function()
        vim.g.tagbar_type_go = {
            ctagstype = 'go',
            kinds = {
                'p:package',
                'i:imports:1',
                'c:constants',
                'v:variables',
                't:types',
                'n:interfaces',
                'w:fields',
                'e:embedded',
                'm:methods',
                'r:constructor',
                'f:functions',
            },
            sro = '.',
            kind2scope = {
                t = 'ctype',
                n = 'ntype',
            },
            scope2kind = {
                ctype = 't',
                ntype = 'n',
            },
            ctagsbin = 'gotags',
            ctagsargs = '-sort -silent',
        }
    end
}
