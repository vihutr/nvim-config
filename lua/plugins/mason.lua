return{
    {
        -- LSP Support
        -- Optional Language Server/Linter installer
        {'williamboman/mason.nvim'},
        dependencies = {
            'williamboman/mason-lspconfig.nvim'
        },
        -- Required
        {'neovim/nvim-lspconfig'},
        -- run = function()
        --     pcall(vim.api.nvim_command, 'MasonUpdate')
        -- end,

        -- Autocompletion
        -- Required
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
        config = function()
            require("mason").setup()
            -- keymaps
        end,
    }
}
