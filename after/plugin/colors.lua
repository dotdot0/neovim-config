function ColorMyLife()
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='red', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='green', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='yellow', bold=true })
end

LineNumberColors()
ColorMyLife()
