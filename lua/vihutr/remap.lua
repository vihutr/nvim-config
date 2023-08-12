vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

-- paste over something highlighted and not copy to buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to system clipboard instead of just vim
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("x", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y",  "\"+Y")

-- delete to void instead of copy to buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

