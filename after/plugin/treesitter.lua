require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "help", "javascript", "python", "typescript"},

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

  },
}
