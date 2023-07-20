local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
    'tsserver',
    'eslint',
	'pyright',
	'clangd',
	'jdtls',

})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<Tab>'] = cmp.mapping.confirm({select = true}),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.setup()
