-- Don't really use this anymore since my terminal background is not transparent.
function ColorMyPencils(color)
    color = color or "gruvbox-material"

    vim.cmd.colorscheme(color)
    vim.o.termguicolors = true

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
