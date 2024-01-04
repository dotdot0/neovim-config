local builtin = require("telescope.builtin")

-- Function to launch mason
local function mason()
	vim.cmd "Mason"	
end

-- Function to launch Telescope help_tags
local function help_tags()
	vim.cmd "Telescope help_tags"
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", builtin.find_files, {})
vim.keymap.set("n", "<leader>m", mason, {})
vim.keymap.set("n", "<leader>h", help_tags, {})
vim.keymap.set("n", "<leader>s", function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {})
vim.keymap.set("n", "<leader>g", function ()
	builtin.live_grep()
end, {})
