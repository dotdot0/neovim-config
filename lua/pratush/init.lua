require("pratush.remap")
require("pratush.set")


require('mason.settings').set({
  ui = {
    border = 'rounded'
  }
})

local lsp = require('lsp-zero')
lsp.preset('recommended')

require('indent_blankline').setup {
    char = '┊',
    show_trailing_blankline_indent = false,
}

lsp.setup()

require("startup").setup({ theme = "evil" })

require('lualine').setup()

require('nvim_comment').setup({
    line_mapping = "<leader>c"
})

--rust-tools.nvim
local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

rt.inlay_hints.set()
rt.hover_actions.hover_actions()
require('rust-tools').runnables.runnables()

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme moonfly]])
