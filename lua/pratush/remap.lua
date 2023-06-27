local builtin = require("telescope.builtin")
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", builtin.find_files, {})
vim.keymap.set("n", "<leader>s", function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
