function ColorMyPencils(color)
	-- color = color or "rose-pine"
	-- color = color or "tokyobones"
	color = color or "nord"
	-- color = color or "nightfox"

	vim.cmd.colorscheme(color)
    vim.o.termguicolors = true

    -- vim.g.tokyobones_italic_comments = false
	-- vim.cmd('set background=dark')

 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
