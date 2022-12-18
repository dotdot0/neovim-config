require("pratush.remap")
require("pratush.set")


require('mason.settings').set({
  ui = {
    border = 'rounded'
  }
})

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

require('lualine').setup()

require('nvim_comment').setup({
    line_mapping = "<leader>c"
})

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme noctis]])
