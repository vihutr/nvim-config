local current = 'tokyonight'
return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({})
            vim.cmd.colorscheme "catppuccin-mocha"
        end,
    },
}
-- color = colors or "rose-pine/neovim"
-- vim.cmd.colorscheme(color)
