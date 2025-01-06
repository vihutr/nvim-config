return{
    {
        'mbbill/undotree',
        config = function()
            -- keymaps
            vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, {})
        end,
    }
}
