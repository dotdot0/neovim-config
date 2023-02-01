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
    line_mapping = "<leader>c",
    comment_empty = false,
    comment_chunk_text_object = "<leader>x"
})

require('lspkind').init({
    -- DEPRECATED (use mode instead): enables text annotations
    --
    -- default: true
    -- with_text = true,

    -- defines how annotations are shown
    -- default: symbol
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol',

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})

require('nvim-lightbulb').setup({autocmd = {enabled = true}})
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
