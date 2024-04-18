local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'clangd',
    'pylsp',
    'dockerls',
	'tsserver',
	'eslint',
	'lua_ls',
	'rust_analyzer',
})

-- recognize vim as global
require'lspconfig'.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}
            }
        }
    }
}

local cmp = require('cmp')
cmp.setup({
    mapping = cmp.mapping.preset.insert({
	    ['<CR>'] = cmp.mapping.confirm({select = false}),
    }),
})



--local cmp_select = {behaviour = cmp.SelectBehavior.Select}
--local cmp_mappings = lsp.defaults.cmp_mappings({
--    ['<C-s>'] = cmp.mapping.complete(),
--	['<CR>'] = cmp.mapping.confirm({select = true}),
--})
--lsp.setup_nvim_cmp({
--	mapping = cmp_mappings
--})



--cmp.setup({
--    sources = {{name = 'nvim_lsp'}},
--    mapping = cmp.mapping.preset.insert({
--	    ["<C-Space>"] = cmp.mapping.complete(),
--    }),
--    snippet = {
--        expand = function(args)
--            require('luasnip').lsp_expand(args.body)
--        end,
--    },
--})

lsp.set_preferences({
  sign_icons = { }
})

-- remaps only for current buffer; if there is an lsp use its buffer, otherwise do vim's default
lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
end)

lsp.setup()
