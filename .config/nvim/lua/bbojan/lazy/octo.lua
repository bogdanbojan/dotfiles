return {
    'pwntester/octo.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require("octo").setup({
            suppress_missing_scope = {
                projects_v2 = true,
            },
            default_to_projects_v2 = false,
        })
    end
}
