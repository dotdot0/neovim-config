require("pratush.remap")
require("pratush.set")


require("gruvbox").setup({
  bold=false,
  italic=false
})


vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
