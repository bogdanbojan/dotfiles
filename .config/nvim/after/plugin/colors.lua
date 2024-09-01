function ColorMyPencils(color)
    -- color = color or "rose-pine"
    -- color = color or "rose-pine-moon"
    -- color = color or "solarized"
    -- color = color or "solarized-osaka"
    -- color = color or "kanagawa-wave"
    -- color = color or "everforest"
    -- color = color or "catppuccin"
    -- color = color or "tokyobones"
    -- color = color or "nord"
    -- color = color or "iceberg"
    -- color = color or "terafox"
    color = color or "gruvbox-material"

    vim.cmd.colorscheme(color)
    vim.o.termguicolors = true

    -- vim.g.tokyobones_italic_comments = false
    -- vim.cmd('set background=dark')

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
