function ColorMyLife()
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#e0816c', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='green', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#ebdb67', bold=true })
end

LineNumberColors()
ColorMyLife()
