local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'rust_analyzer',
	'sumneko_lua',
	'pyright'
})

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
["<C-Space>"] = cmp.mapping.complete()
})

lsp.setup()
