return{
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                built = 'make',
                cond = vim.fn.executable('make') == 1
            },
        },
        config = function()
            require('telescope').setup({
                defaults = {
                    mappings = {
                        i = {
                        }
                    }
                }
            })
            pcall(require('telescope').load_extension, 'fzf')
            -- keymaps
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<c-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>fs', function() builtin.grep_string({ search = vim.fn.input('grep > ') }); end)
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        end,
    }
}


