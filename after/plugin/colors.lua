function CustomColor(color)
    vim.opt.termguicolors = true
	color = colors or "rose-pine"
	vim.cmd.colorscheme(color)
	-- set transparent bg
    vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
end

CustomColor()
