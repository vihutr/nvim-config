require('mason').setup({})
-- require('mason-lspconfig').setup({
--   handlers = {
--     function(server_name)
--       require('lspconfig')[server_name].setup({})
--     end,
--   },
-- })

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
require'lspconfig'.pylsp.setup{
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = {'W391', 'E501', 'E401', 'E231', 'E302', 'E303', 'E305', 'W292', 'W293'}
                },
                -- pylint = { enabled = true },
                jedi_completion = { fuzzy = true },
                yapf = { enabled = true },
                pylsp_mypy = { enabled = true },
                pyls_isort = { enabled = true },
                black = { enabled = true },
            }
        }
    }
}

local cmp = require('cmp')
cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    },
    mapping = cmp.mapping.preset.insert({
	    ['<CR>'] = cmp.mapping.confirm({select = false, behavior = cmp.ConfirmBehavior.Insert}),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
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
